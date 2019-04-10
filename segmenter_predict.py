# -*- coding: utf-8 -*-
"""
@author: Yan Shao, yan.shao@lingfil.uu.se
"""

from time import time
import reader
import toolbox
from model_lima import Model
import sys
import argparse
import os
import codecs
import tensorflow as tf
import pickle
import tempfile

if not hasattr(sys, 'argv'):
    sys.argv  = ['']

parser = argparse.ArgumentParser(description='A Universal Tokenizer. Written by Y. Shao, Uppsala University')

parser.add_argument('-p', '--path', default=None,
                    help='Path of the workstation')

parser.add_argument('-m', '--model', default='trained_model',
                    help='Name of the trained model')

parser.add_argument('-sl', '--sent_limit', default=300, type=int,
                    help='Long sentences will be chopped')

parser.add_argument("-rb", "--tag_batch", default=500, type=int,
                    help="Tagging batch size")

parser.add_argument("-g", "--gpu", default=0, type=int,
                    help="the id of gpu, the default is 0")

parser.add_argument('raw', metavar='f', type=str, nargs='*',
                    help='The files to tokenize')

FLAGS = parser.parse_args()


class Tokenizer:

    def __init__(self, path, model, gpu=0, sent_limit=300, tag_batch=500):
        t = time()
        self.main_graph = None
        self.model = None

        assert path is not None
        assert model is not None
        self.path = path
        assert os.path.isfile(path + '/chars.txt')

        if not os.path.isfile(path + '/' + model + '_model') or not os.path.isfile(path + '/' + model +
                                                                                        '_weights.index'):
            raise Exception('No model file or weights file under the name of ' + model + '.')
        with open(os.path.join(path, model + '_model'), 'rb') as fin:
            weight_path = path + '/' + model
            param_dic = pickle.load(fin)

        nums_chars = param_dic['nums_chars']
        nums_tags = param_dic['nums_tags']
        crf = param_dic['crf']
        self.crf = crf
        emb_dim = param_dic['emb_dim']
        cell = param_dic['cell']
        rnn_dim = param_dic['rnn_dim']
        rnn_num = param_dic['rnn_num']
        drop_out = param_dic['drop_out']
        buckets_char = param_dic['buckets_char']
        nums_ngrams = param_dic['ngram']
        self.is_space = param_dic['is_space']
        self.emb_path = param_dic['emb_path']
        self.tag_scheme = param_dic['tag_scheme']
        self.sent_limit = sent_limit
        self.tag_batch = tag_batch

        #print(f'Done importing modules and reading parameters. Time consumed: {time() - t:3.2f} seconds',
              #file=sys.stderr)
        #sys.stderr.flush()
        #t = time()

        #print('Initialization....', file=sys.stderr)
        #sys.stderr.flush()

        ngram = 1
        if nums_ngrams is not None:
            ngram = len(nums_ngrams) + 1
        self.ngram = ngram

        initializer = tf.contrib.layers.xavier_initializer()

        self.main_graph = tf.Graph()
        with self.main_graph.as_default():
            with tf.variable_scope("tagger") as scope:
                self.model = Model(nums_chars=nums_chars,
                              nums_tags=nums_tags,
                              buckets_char=[self.sent_limit + 100],
                              counts=[200],
                              crf=crf,
                              ngram=nums_ngrams,
                              batch_size=self.tag_batch,
                              is_space=self.is_space)

                self.model.main_graph(trained_model=None, scope=scope,
                                      emb_dim=emb_dim, cell=cell,
                                      rnn_dim=rnn_dim, rnn_num=rnn_num,
                                      drop_out=drop_out)

            init = tf.global_variables_initializer()

        #print(f'Done defining graph. Time consumed: {time() - t:3.2f} seconds',
              #file=sys.stderr)
        #sys.stderr.flush()
        #t = time()


        config = tf.ConfigProto(allow_soft_placement=True)
        self.gpu_config = "/gpu:" + str(gpu)

        self.main_sess = tf.Session(config=config, graph=self.main_graph)
        #print ('main_graph tensors:', file=sys.stderr)
        #for tensor in self.main_graph.get_operations():
            #print (tensor.name, file=sys.stderr)

        if crf:
            decode_graph = tf.Graph()

            with decode_graph.as_default():
                self.model.decode_graph()
            decode_graph.finalize()
            #print ('\ndecode_graph tensors:', file=sys.stderr)
            #for tensor in decode_graph.get_operations():
                #print (tensor.name, file=sys.stderr)

            decode_sess = tf.Session(config=config, graph=decode_graph)

            self.sess = [self.main_sess, decode_sess]

        else:
            self.sess = [self.main_sess, None]

        with tf.device(self.gpu_config):
            #print('Loading weights....', file=sys.stderr)
            self.main_sess.run(init)
            self.model.load_weights(self.main_sess, weight_path + '_weights')
            #print('Loaded.', file=sys.stderr)

        #print(f'Done initializing session. Time consumed: {time() - t:3.2f} seconds',
              #file=sys.stderr)
        #sys.stderr.flush()
        #t = time()


    def tokenize(self, text):
        """Tokenize the input text

        :param text: the text to tokenize.
        :return: a list of the sentences contained in the text. Each element is
        a list of tokens and each token is a tuple made of its raw string and
        its offset in the text.
        """
        t = time()
        grams, gram2idx = None, None

        (char2idx, unk_chars_idx,
         idx2char, tag2idx, idx2tag, _) = toolbox.get_dicts(self.path,
                                                            True,
                                                            self.tag_scheme,
                                                            self.crf)

        if self.ngram > 1:
            grams = toolbox.read_ngrams(self.path, self.ngram)
        raw_file_f = tempfile.NamedTemporaryFile(mode='w')
        raw_file_f.write(text)
        raw_file_f.flush()

        raw_file = raw_file_f.name
        new_chars, new_grams = None, None

        new_chars = toolbox.get_new_chars(raw_file, char2idx, self.is_space)

        if self.emb_path is not None:
            valid_chars = toolbox.get_valid_chars(new_chars, self.emb_path)
        else:
            valid_chars = None

        (char2idx, idx2char,
         unk_chars_idx, sub_dict) = toolbox.update_char_dict(char2idx,
                                                             new_chars,
                                                             unk_chars_idx,
                                                             valid_chars)

        raw_x, raw_len = toolbox.get_input_vec_tag(None, raw_file, char2idx,
                                                  limit=self.sent_limit + 100,
                                                  is_space=self.is_space)
        #print(f'Got raw_x={raw_x}, raw_len={raw_len}')
        if self.ngram > 1:
            gram2idx = toolbox.get_ngram_dic(grams)
            new_grams = toolbox.get_new_grams(raw_file, gram2idx, is_raw=True,
                                              is_space=self.is_space)

            raw_grams = toolbox.get_gram_vec_tag(None, raw_file, gram2idx,
                                                limit=self.sent_limit + 100,
                                                is_space=self.is_space)

            raw_x += raw_grams

        for k in range(len(raw_x)):
            raw_x[k] = toolbox.pad_zeros(raw_x[k], self.sent_limit + 100)
        with self.main_graph.as_default():
            self.model.define_updates(new_chars=new_chars,
                                emb_path=self.emb_path,
                                char2idx=char2idx)

        with tf.device(self.gpu_config):
            #print('Running updates....', file=sys.stderr)
            self.model.run_updates(self.main_sess)
            #print('Updated.', file=sys.stderr)
        #print(f'Done loading data. Time consumed: {time() - t:3.2f} seconds',
              #file=sys.stderr)
        #sys.stderr.flush()
        #t = time()

        #output_path = f'{raw_file}.conllu'
        #print(f'Before tag {raw_x}.', file=sys.stderr)
        sentences = self.model.tag(raw_x,
                                   idx2tag,
                                   idx2char,
                                   unk_chars_idx,
                                   sub_dict,
                                   self.sess,
                                   batch_size=self.tag_batch)

        #print(f'Done tokenizing. Time consumed: {time() - t:3.2f} seconds',
              #file=sys.stderr)
        #sys.stderr.flush()
        #t = time()
        return sentences


def main():

    tokenizer = Tokenizer(FLAGS.path, FLAGS.model, FLAGS.gpu, FLAGS.sent_limit,
                          FLAGS.tag_batch)

    for f in FLAGS.raw:
        print(f'\n######\nTokenizing {f}', file=sys.stderr)

        with open(f, 'r') as myfile:
            text = myfile.read()
            sentences = tokenizer.tokenize(text)
            #print(sentences, file=sys.stderr)
            for sentence_id in range(len(sentences)):
                sentence_text = ''
                conllu_tokens = []
                sentence = sentences[sentence_id]
                sentence_offset = 0
                if sentence:
                    sentence_offset = sentence[0][1]
                for token_id in range(len(sentence)):
                    no_space_after = '_'
                    if (token_id < len(sentence) - 1
                            and sentence[token_id][1]+len(sentence[token_id][0]) == sentence[token_id+1][1]):
                        no_space_after = 'SpaceAfter=No'
                    if sentence_offset+len(sentence_text) < sentence[token_id][1]:
                        sentence_text += ' ' * (sentence[token_id][1]-(sentence_offset+len(sentence_text)))
                    sentence_text += sentence[token_id][0]
                    pos = 'VERB' if token_id == 0 else 'NOUN'
                    head = '0' if token_id == 0 else '1'
                    deprel = 'root' if token_id == 0 else 'nsubj'
                    conllu_tokens.append('{}\t{}\t{}\t{}\t_\t_\t{}\t{}\t_\t{}'
                                          .format(token_id+1,
                                                  sentence[token_id][0],
                                                  sentence[token_id][0],
                                                  pos,
                                                  head,
                                                  deprel,
                                                  no_space_after))

                print('# sent_id = {}'.format(sentence_id+1))
                print('# text = {}'.format(sentence_text))
                print('\n'.join(conllu_tokens))
                print('')
            #print(sentences, file=sys.stderr)


if __name__ == '__main__':
    main()
