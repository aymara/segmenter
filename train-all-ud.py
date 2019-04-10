#!/usr/bin/env python3

import os
from shutil import copyfile

data_path = '/home/gael/Logiciels/ud-treebanks-v2.3'
#with open('/home/gael/Logiciels/ud-treebanks-v2.3/iso_names.txt', 'r') as f:

languages= [
    ('af_afribooms', 'UD_Afrikaans-AfriBooms' ),
    #('ar_nyuad', 'UD_Arabic-NYUAD' ),
    ('ar_padt', 'UD_Arabic-PADT' ),
    ('be_hse', 'UD_Belarusian-HSE' ),
    ('bg_btb', 'UD_Bulgarian-BTB' ),
    ('ca_ancora', 'UD_Catalan-AnCora' ),
    ('cop_scriptorium', 'UD_Coptic-Scriptorium' ),
    ('cs_cac', 'UD_Czech-CAC' ),
    ('cs_cltt', 'UD_Czech-CLTT' ),
    ('cs_fictree', 'UD_Czech-FicTree' ),
    ('cs_pdt', 'UD_Czech-PDT' ),
    ('cu_proiel', 'UD_Old_Church_Slavonic-PROIEL' ),
    ('da_ddt', 'UD_Danish-DDT' ),
    ('de_gsd', 'UD_German-GSD' ),
    ('el_gdt', 'UD_Greek-GDT' ),
    ('en_esl', 'UD_English-ESL' ),
    ('en_ewt', 'UD_English-EWT' ),
    ('en_gum', 'UD_English-GUM' ),
    ('en_lines', 'UD_English-LinES' ),
    ('en_partut', 'UD_English-ParTUT' ),
    ('es_ancora', 'UD_Spanish-AnCora' ),
    ('es_gsd', 'UD_Spanish-GSD' ),
    ('et_edt', 'UD_Estonian-EDT' ),
    ('eu_bdt', 'UD_Basque-BDT' ),
    ('fa_seraji', 'UD_Persian-Seraji' ),
    ('fi_ftb', 'UD_Finnish-FTB' ),
    ('fi_tdt', 'UD_Finnish-TDT' ),
    ('fr_ftb', 'UD_French-FTB' ),
    ('fr_gsd', 'UD_French-GSD' ),
    ('fro_srcmf', 'UD_Old_French-SRCMF' ),
    ('fr_partut', 'UD_French-ParTUT' ),
    ('fr_sequoia', 'UD_French-Sequoia' ),
    ('fr_spoken', 'UD_French-Spoken' ),
    ('gl_ctg', 'UD_Galician-CTG' ),
    ('got_proiel', 'UD_Gothic-PROIEL' ),
    ('grc_perseus', 'UD_Ancient_Greek-Perseus' ),
    ('grc_proiel', 'UD_Ancient_Greek-PROIEL' ),
    ('he_htb', 'UD_Hebrew-HTB' ),
    ('hi_hdtb', 'UD_Hindi-HDTB' ),
    ('hr_set', 'UD_Croatian-SET' ),
    ('hu_szeged', 'UD_Hungarian-Szeged' ),
    ('id_gsd', 'UD_Indonesian-GSD' ),
    ('it_isdt', 'UD_Italian-ISDT' ),
    ('it_partut', 'UD_Italian-ParTUT' ),
    ('it_postwita', 'UD_Italian-PoSTWITA' ),
    ('ja_bccwj', 'UD_Japanese-BCCWJ' ),
    ('ja_gsd', 'UD_Japanese-GSD' ),
    ('ko_gsd', 'UD_Korean-GSD' ),
    ('ko_kaist', 'UD_Korean-Kaist' ),
    ('la_ittb', 'UD_Latin-ITTB' ),
    ('la_proiel', 'UD_Latin-PROIEL' ),
    ('lt_hse', 'UD_Lithuanian-HSE' ),
    ('lv_lvtb', 'UD_Latvian-LVTB' ),
    ('mr_ufal', 'UD_Marathi-UFAL' ),
    ('mt_mudt', 'UD_Maltese-MUDT' ),
    ('nl_alpino', 'UD_Dutch-Alpino' ),
    ('nl_lassysmall', 'UD_Dutch-LassySmall' ),
    ('no_bokmaal', 'UD_Norwegian-Bokmaal' ),
    ('no_nynorsk', 'UD_Norwegian-Nynorsk' ),
    ('pl_lfg', 'UD_Polish-LFG' ),
    ('pl_sz', 'UD_Polish-SZ' ),
    ('pt_bosque', 'UD_Portuguese-Bosque' ),
    ('pt_gsd', 'UD_Portuguese-GSD' ),
    ('qhe_hiencs', 'UD_Hindi_English-HIENCS' ),
    ('ro_nonstandard', 'UD_Romanian-Nonstandard' ),
    ('ro_rrt', 'UD_Romanian-RRT' ),
    ('ru_gsd', 'UD_Russian-GSD' ),
    ('ru_syntagrus', 'UD_Russian-SynTagRus' ),
    ('sk_snk', 'UD_Slovak-SNK' ),
    ('sl_ssj', 'UD_Slovenian-SSJ' ),
    ('sr_set', 'UD_Serbian-SET' ),
    ('sv_lines', 'UD_Swedish-LinES' ),
    ('sv_talbanken', 'UD_Swedish-Talbanken' ),
    ('swl_sslc', 'UD_Swedish_Sign_Language-SSLC' ),
    ('ta_ttb', 'UD_Tamil-TTB' ),
    ('te_mtg', 'UD_Telugu-MTG' ),
    ('tr_imst', 'UD_Turkish-IMST' ),
    ('ug_udt', 'UD_Uyghur-UDT' ),
    ('uk_iu', 'UD_Ukrainian-IU' ),
    ('ur_udtb', 'UD_Urdu-UDTB' ),
    ('vi_vtb', 'UD_Vietnamese-VTB' ),
    ('zh_gsd', 'UD_Chinese-GSD' ),
]

print('#!/bin/bash')
print('')
print('set -o errexit')
print('set -o pipefail')
print('')

for id, name in languages:
    print('#', id, name)
    print('echo "Train tokenizer for {} {}"'.format(id, name))
    print('python segmenter.py train -p {}/{}  -ss -m uppsala_{}'.format(data_path, name, id))
    print('echo "Annotate test corpus for {} {}"'.format(id, name))
    print('python segmenter_predict.py --path {0}/{1} --model uppsala_{2} {0}/{1}/{2}-ud-test.txt > {2}-ud-test.py.conllu'.format(data_path, name, id))
    print('echo "Evaluate tokenizer {} {}"'.format(id, name))
    print('python conll18_ud_eval.py -v {}/{}/{}-ud-test.conllu {}-ud-test.py.conllu'.format(data_path, name, id, id))

    #os.system('./char_embeddings.py --data_path={} --corpus_name={} --corpus={}'.format(data_path, name, id))
    #os.system('./tfudpipe.py --corpus_name={} --corpus={}'.format(name, id))
    #os.system('./tfudpipe-predict.py /home/gael/Logiciels/ud-treebanks-v2.3/{}/{}-ud-test.txt > {}-ud-test.lima-cpp.conllu'.format(name, id, id))
    #os.system('./conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/{}/{}-ud-test.conllu {}-ud-test.lima-cpp.conllu'.format(name, id, id))
    #if (os.path.isfile('log-{}/metadata.tsv'.format(id))
            #and os.path.isfile('udmodel-{}/frozen_model.pb'.format(id))):
        #os.makedirs('tok-models/{}'.format(id), exist_ok=True)
        #copyfile('log-{}/metadata.tsv'.format(id),
                #'tok-models/{}/metadata.tsv'.format(id))
        #copyfile('udmodel-{}/frozen_model.pb'.format(id),
                #'tok-models/{}/frozen_model.pb'.format(id))
