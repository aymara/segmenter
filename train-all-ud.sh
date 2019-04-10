#!/bin/bash

set -o errexit
set -o pipefail

# # af_afribooms UD_Afrikaans-AfriBooms
# echo "Train tokenizer for af_afribooms UD_Afrikaans-AfriBooms"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Afrikaans-AfriBooms  -ss -m uppsala_af_afribooms
# echo "Annotate test corpus for af_afribooms UD_Afrikaans-AfriBooms"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Afrikaans-AfriBooms --model uppsala_af_afribooms /home/gael/Logiciels/ud-treebanks-v2.3/UD_Afrikaans-AfriBooms/af_afribooms-ud-test.txt > af_afribooms-ud-test.py.conllu
# echo "Evaluate tokenizer af_afribooms UD_Afrikaans-AfriBooms"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Afrikaans-AfriBooms/af_afribooms-ud-test.conllu af_afribooms-ud-test.py.conllu
# # ar_padt UD_Arabic-PADT
# echo "Train tokenizer for ar_padt UD_Arabic-PADT"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Arabic-PADT  -ss -m uppsala_ar_padt
# echo "Annotate test corpus for ar_padt UD_Arabic-PADT"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Arabic-PADT --model uppsala_ar_padt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Arabic-PADT/ar_padt-ud-test.txt > ar_padt-ud-test.py.conllu
# echo "Evaluate tokenizer ar_padt UD_Arabic-PADT"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Arabic-PADT/ar_padt-ud-test.conllu ar_padt-ud-test.py.conllu
# # be_hse UD_Belarusian-HSE
# echo "Train tokenizer for be_hse UD_Belarusian-HSE"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Belarusian-HSE  -ss -m uppsala_be_hse
# echo "Annotate test corpus for be_hse UD_Belarusian-HSE"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Belarusian-HSE --model uppsala_be_hse /home/gael/Logiciels/ud-treebanks-v2.3/UD_Belarusian-HSE/be_hse-ud-test.txt > be_hse-ud-test.py.conllu
# echo "Evaluate tokenizer be_hse UD_Belarusian-HSE"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Belarusian-HSE/be_hse-ud-test.conllu be_hse-ud-test.py.conllu
# # bg_btb UD_Bulgarian-BTB
# echo "Train tokenizer for bg_btb UD_Bulgarian-BTB"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Bulgarian-BTB  -ss -m uppsala_bg_btb
# echo "Annotate test corpus for bg_btb UD_Bulgarian-BTB"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Bulgarian-BTB --model uppsala_bg_btb /home/gael/Logiciels/ud-treebanks-v2.3/UD_Bulgarian-BTB/bg_btb-ud-test.txt > bg_btb-ud-test.py.conllu
# echo "Evaluate tokenizer bg_btb UD_Bulgarian-BTB"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Bulgarian-BTB/bg_btb-ud-test.conllu bg_btb-ud-test.py.conllu
# # ca_ancora UD_Catalan-AnCora
# echo "Train tokenizer for ca_ancora UD_Catalan-AnCora"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Catalan-AnCora  -ss -m uppsala_ca_ancora
# echo "Annotate test corpus for ca_ancora UD_Catalan-AnCora"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Catalan-AnCora --model uppsala_ca_ancora /home/gael/Logiciels/ud-treebanks-v2.3/UD_Catalan-AnCora/ca_ancora-ud-test.txt > ca_ancora-ud-test.py.conllu
# echo "Evaluate tokenizer ca_ancora UD_Catalan-AnCora"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Catalan-AnCora/ca_ancora-ud-test.conllu ca_ancora-ud-test.py.conllu
# cop_scriptorium UD_Coptic-Scriptorium
# echo "Train tokenizer for cop_scriptorium UD_Coptic-Scriptorium"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Coptic-Scriptorium  -ss -m uppsala_cop_scriptorium
# echo "Annotate test corpus for cop_scriptorium UD_Coptic-Scriptorium"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Coptic-Scriptorium --model uppsala_cop_scriptorium /home/gael/Logiciels/ud-treebanks-v2.3/UD_Coptic-Scriptorium/cop_scriptorium-ud-test.txt > cop_scriptorium-ud-test.py.conllu
# echo "Evaluate tokenizer cop_scriptorium UD_Coptic-Scriptorium"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Coptic-Scriptorium/cop_scriptorium-ud-test.conllu cop_scriptorium-ud-test.py.conllu
# # cs_cac UD_Czech-CAC
# echo "Train tokenizer for cs_cac UD_Czech-CAC"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-CAC  -ss -m uppsala_cs_cac
# echo "Annotate test corpus for cs_cac UD_Czech-CAC"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-CAC --model uppsala_cs_cac /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-CAC/cs_cac-ud-test.txt > cs_cac-ud-test.py.conllu
# echo "Evaluate tokenizer cs_cac UD_Czech-CAC"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-CAC/cs_cac-ud-test.conllu cs_cac-ud-test.py.conllu
# # cs_cltt UD_Czech-CLTT
# echo "Train tokenizer for cs_cltt UD_Czech-CLTT"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-CLTT  -ss -m uppsala_cs_cltt
# echo "Annotate test corpus for cs_cltt UD_Czech-CLTT"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-CLTT --model uppsala_cs_cltt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-CLTT/cs_cltt-ud-test.txt > cs_cltt-ud-test.py.conllu
# echo "Evaluate tokenizer cs_cltt UD_Czech-CLTT"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-CLTT/cs_cltt-ud-test.conllu cs_cltt-ud-test.py.conllu
# # cs_fictree UD_Czech-FicTree
# echo "Train tokenizer for cs_fictree UD_Czech-FicTree"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-FicTree  -ss -m uppsala_cs_fictree
# echo "Annotate test corpus for cs_fictree UD_Czech-FicTree"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-FicTree --model uppsala_cs_fictree /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-FicTree/cs_fictree-ud-test.txt > cs_fictree-ud-test.py.conllu
# echo "Evaluate tokenizer cs_fictree UD_Czech-FicTree"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-FicTree/cs_fictree-ud-test.conllu cs_fictree-ud-test.py.conllu
# # cs_pdt UD_Czech-PDT
# echo "Train tokenizer for cs_pdt UD_Czech-PDT"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-PDT  -ss -m uppsala_cs_pdt
# echo "Annotate test corpus for cs_pdt UD_Czech-PDT"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-PDT --model uppsala_cs_pdt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-PDT/cs_pdt-ud-test.txt > cs_pdt-ud-test.py.conllu
# echo "Evaluate tokenizer cs_pdt UD_Czech-PDT"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Czech-PDT/cs_pdt-ud-test.conllu cs_pdt-ud-test.py.conllu
# # cu_proiel UD_Old_Church_Slavonic-PROIEL
# echo "Train tokenizer for cu_proiel UD_Old_Church_Slavonic-PROIEL"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Old_Church_Slavonic-PROIEL  -ss -m uppsala_cu_proiel
# echo "Annotate test corpus for cu_proiel UD_Old_Church_Slavonic-PROIEL"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Old_Church_Slavonic-PROIEL --model uppsala_cu_proiel /home/gael/Logiciels/ud-treebanks-v2.3/UD_Old_Church_Slavonic-PROIEL/cu_proiel-ud-test.txt > cu_proiel-ud-test.py.conllu
# echo "Evaluate tokenizer cu_proiel UD_Old_Church_Slavonic-PROIEL"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Old_Church_Slavonic-PROIEL/cu_proiel-ud-test.conllu cu_proiel-ud-test.py.conllu
# # da_ddt UD_Danish-DDT
# echo "Train tokenizer for da_ddt UD_Danish-DDT"
# python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Danish-DDT  -ss -m uppsala_da_ddt
# echo "Annotate test corpus for da_ddt UD_Danish-DDT"
# python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Danish-DDT --model uppsala_da_ddt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Danish-DDT/da_ddt-ud-test.txt > da_ddt-ud-test.py.conllu
# echo "Evaluate tokenizer da_ddt UD_Danish-DDT"
# python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Danish-DDT/da_ddt-ud-test.conllu da_ddt-ud-test.py.conllu
# de_gsd UD_German-GSD
echo "Train tokenizer for de_gsd UD_German-GSD"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_German-GSD  -ss -m uppsala_de_gsd
echo "Annotate test corpus for de_gsd UD_German-GSD"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_German-GSD --model uppsala_de_gsd /home/gael/Logiciels/ud-treebanks-v2.3/UD_German-GSD/de_gsd-ud-test.txt > de_gsd-ud-test.py.conllu
echo "Evaluate tokenizer de_gsd UD_German-GSD"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_German-GSD/de_gsd-ud-test.conllu de_gsd-ud-test.py.conllu
# el_gdt UD_Greek-GDT
echo "Train tokenizer for el_gdt UD_Greek-GDT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Greek-GDT  -ss -m uppsala_el_gdt
echo "Annotate test corpus for el_gdt UD_Greek-GDT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Greek-GDT --model uppsala_el_gdt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Greek-GDT/el_gdt-ud-test.txt > el_gdt-ud-test.py.conllu
echo "Evaluate tokenizer el_gdt UD_Greek-GDT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Greek-GDT/el_gdt-ud-test.conllu el_gdt-ud-test.py.conllu
# en_esl UD_English-ESL
echo "Train tokenizer for en_esl UD_English-ESL"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-ESL  -ss -m uppsala_en_esl
echo "Annotate test corpus for en_esl UD_English-ESL"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-ESL --model uppsala_en_esl /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-ESL/en_esl-ud-test.txt > en_esl-ud-test.py.conllu
echo "Evaluate tokenizer en_esl UD_English-ESL"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-ESL/en_esl-ud-test.conllu en_esl-ud-test.py.conllu
# en_ewt UD_English-EWT
echo "Train tokenizer for en_ewt UD_English-EWT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-EWT  -ss -m uppsala_en_ewt
echo "Annotate test corpus for en_ewt UD_English-EWT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-EWT --model uppsala_en_ewt /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-EWT/en_ewt-ud-test.txt > en_ewt-ud-test.py.conllu
echo "Evaluate tokenizer en_ewt UD_English-EWT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-EWT/en_ewt-ud-test.conllu en_ewt-ud-test.py.conllu
# en_gum UD_English-GUM
echo "Train tokenizer for en_gum UD_English-GUM"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-GUM  -ss -m uppsala_en_gum
echo "Annotate test corpus for en_gum UD_English-GUM"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-GUM --model uppsala_en_gum /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-GUM/en_gum-ud-test.txt > en_gum-ud-test.py.conllu
echo "Evaluate tokenizer en_gum UD_English-GUM"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-GUM/en_gum-ud-test.conllu en_gum-ud-test.py.conllu
# en_lines UD_English-LinES
echo "Train tokenizer for en_lines UD_English-LinES"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-LinES  -ss -m uppsala_en_lines
echo "Annotate test corpus for en_lines UD_English-LinES"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-LinES --model uppsala_en_lines /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-LinES/en_lines-ud-test.txt > en_lines-ud-test.py.conllu
echo "Evaluate tokenizer en_lines UD_English-LinES"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-LinES/en_lines-ud-test.conllu en_lines-ud-test.py.conllu
# en_partut UD_English-ParTUT
echo "Train tokenizer for en_partut UD_English-ParTUT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-ParTUT  -ss -m uppsala_en_partut
echo "Annotate test corpus for en_partut UD_English-ParTUT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-ParTUT --model uppsala_en_partut /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-ParTUT/en_partut-ud-test.txt > en_partut-ud-test.py.conllu
echo "Evaluate tokenizer en_partut UD_English-ParTUT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_English-ParTUT/en_partut-ud-test.conllu en_partut-ud-test.py.conllu
# es_ancora UD_Spanish-AnCora
echo "Train tokenizer for es_ancora UD_Spanish-AnCora"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Spanish-AnCora  -ss -m uppsala_es_ancora
echo "Annotate test corpus for es_ancora UD_Spanish-AnCora"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Spanish-AnCora --model uppsala_es_ancora /home/gael/Logiciels/ud-treebanks-v2.3/UD_Spanish-AnCora/es_ancora-ud-test.txt > es_ancora-ud-test.py.conllu
echo "Evaluate tokenizer es_ancora UD_Spanish-AnCora"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Spanish-AnCora/es_ancora-ud-test.conllu es_ancora-ud-test.py.conllu
# es_gsd UD_Spanish-GSD
echo "Train tokenizer for es_gsd UD_Spanish-GSD"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Spanish-GSD  -ss -m uppsala_es_gsd
echo "Annotate test corpus for es_gsd UD_Spanish-GSD"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Spanish-GSD --model uppsala_es_gsd /home/gael/Logiciels/ud-treebanks-v2.3/UD_Spanish-GSD/es_gsd-ud-test.txt > es_gsd-ud-test.py.conllu
echo "Evaluate tokenizer es_gsd UD_Spanish-GSD"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Spanish-GSD/es_gsd-ud-test.conllu es_gsd-ud-test.py.conllu
# et_edt UD_Estonian-EDT
echo "Train tokenizer for et_edt UD_Estonian-EDT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Estonian-EDT  -ss -m uppsala_et_edt
echo "Annotate test corpus for et_edt UD_Estonian-EDT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Estonian-EDT --model uppsala_et_edt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Estonian-EDT/et_edt-ud-test.txt > et_edt-ud-test.py.conllu
echo "Evaluate tokenizer et_edt UD_Estonian-EDT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Estonian-EDT/et_edt-ud-test.conllu et_edt-ud-test.py.conllu
# eu_bdt UD_Basque-BDT
echo "Train tokenizer for eu_bdt UD_Basque-BDT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Basque-BDT  -ss -m uppsala_eu_bdt
echo "Annotate test corpus for eu_bdt UD_Basque-BDT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Basque-BDT --model uppsala_eu_bdt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Basque-BDT/eu_bdt-ud-test.txt > eu_bdt-ud-test.py.conllu
echo "Evaluate tokenizer eu_bdt UD_Basque-BDT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Basque-BDT/eu_bdt-ud-test.conllu eu_bdt-ud-test.py.conllu
# fa_seraji UD_Persian-Seraji
echo "Train tokenizer for fa_seraji UD_Persian-Seraji"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Persian-Seraji  -ss -m uppsala_fa_seraji
echo "Annotate test corpus for fa_seraji UD_Persian-Seraji"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Persian-Seraji --model uppsala_fa_seraji /home/gael/Logiciels/ud-treebanks-v2.3/UD_Persian-Seraji/fa_seraji-ud-test.txt > fa_seraji-ud-test.py.conllu
echo "Evaluate tokenizer fa_seraji UD_Persian-Seraji"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Persian-Seraji/fa_seraji-ud-test.conllu fa_seraji-ud-test.py.conllu
# fi_ftb UD_Finnish-FTB
echo "Train tokenizer for fi_ftb UD_Finnish-FTB"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Finnish-FTB  -ss -m uppsala_fi_ftb
echo "Annotate test corpus for fi_ftb UD_Finnish-FTB"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Finnish-FTB --model uppsala_fi_ftb /home/gael/Logiciels/ud-treebanks-v2.3/UD_Finnish-FTB/fi_ftb-ud-test.txt > fi_ftb-ud-test.py.conllu
echo "Evaluate tokenizer fi_ftb UD_Finnish-FTB"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Finnish-FTB/fi_ftb-ud-test.conllu fi_ftb-ud-test.py.conllu
# fi_tdt UD_Finnish-TDT
echo "Train tokenizer for fi_tdt UD_Finnish-TDT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Finnish-TDT  -ss -m uppsala_fi_tdt
echo "Annotate test corpus for fi_tdt UD_Finnish-TDT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Finnish-TDT --model uppsala_fi_tdt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Finnish-TDT/fi_tdt-ud-test.txt > fi_tdt-ud-test.py.conllu
echo "Evaluate tokenizer fi_tdt UD_Finnish-TDT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Finnish-TDT/fi_tdt-ud-test.conllu fi_tdt-ud-test.py.conllu
# fr_ftb UD_French-FTB
echo "Train tokenizer for fr_ftb UD_French-FTB"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-FTB  -ss -m uppsala_fr_ftb
echo "Annotate test corpus for fr_ftb UD_French-FTB"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-FTB --model uppsala_fr_ftb /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-FTB/fr_ftb-ud-test.txt > fr_ftb-ud-test.py.conllu
echo "Evaluate tokenizer fr_ftb UD_French-FTB"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-FTB/fr_ftb-ud-test.conllu fr_ftb-ud-test.py.conllu
# fr_gsd UD_French-GSD
echo "Train tokenizer for fr_gsd UD_French-GSD"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-GSD  -ss -m uppsala_fr_gsd
echo "Annotate test corpus for fr_gsd UD_French-GSD"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-GSD --model uppsala_fr_gsd /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-GSD/fr_gsd-ud-test.txt > fr_gsd-ud-test.py.conllu
echo "Evaluate tokenizer fr_gsd UD_French-GSD"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-GSD/fr_gsd-ud-test.conllu fr_gsd-ud-test.py.conllu
# fro_srcmf UD_Old_French-SRCMF
echo "Train tokenizer for fro_srcmf UD_Old_French-SRCMF"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Old_French-SRCMF  -ss -m uppsala_fro_srcmf
echo "Annotate test corpus for fro_srcmf UD_Old_French-SRCMF"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Old_French-SRCMF --model uppsala_fro_srcmf /home/gael/Logiciels/ud-treebanks-v2.3/UD_Old_French-SRCMF/fro_srcmf-ud-test.txt > fro_srcmf-ud-test.py.conllu
echo "Evaluate tokenizer fro_srcmf UD_Old_French-SRCMF"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Old_French-SRCMF/fro_srcmf-ud-test.conllu fro_srcmf-ud-test.py.conllu
# fr_partut UD_French-ParTUT
echo "Train tokenizer for fr_partut UD_French-ParTUT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-ParTUT  -ss -m uppsala_fr_partut
echo "Annotate test corpus for fr_partut UD_French-ParTUT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-ParTUT --model uppsala_fr_partut /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-ParTUT/fr_partut-ud-test.txt > fr_partut-ud-test.py.conllu
echo "Evaluate tokenizer fr_partut UD_French-ParTUT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-ParTUT/fr_partut-ud-test.conllu fr_partut-ud-test.py.conllu
# fr_sequoia UD_French-Sequoia
echo "Train tokenizer for fr_sequoia UD_French-Sequoia"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-Sequoia  -ss -m uppsala_fr_sequoia
echo "Annotate test corpus for fr_sequoia UD_French-Sequoia"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-Sequoia --model uppsala_fr_sequoia /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-Sequoia/fr_sequoia-ud-test.txt > fr_sequoia-ud-test.py.conllu
echo "Evaluate tokenizer fr_sequoia UD_French-Sequoia"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-Sequoia/fr_sequoia-ud-test.conllu fr_sequoia-ud-test.py.conllu
# fr_spoken UD_French-Spoken
echo "Train tokenizer for fr_spoken UD_French-Spoken"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-Spoken  -ss -m uppsala_fr_spoken
echo "Annotate test corpus for fr_spoken UD_French-Spoken"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-Spoken --model uppsala_fr_spoken /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-Spoken/fr_spoken-ud-test.txt > fr_spoken-ud-test.py.conllu
echo "Evaluate tokenizer fr_spoken UD_French-Spoken"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_French-Spoken/fr_spoken-ud-test.conllu fr_spoken-ud-test.py.conllu
# gl_ctg UD_Galician-CTG
echo "Train tokenizer for gl_ctg UD_Galician-CTG"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Galician-CTG  -ss -m uppsala_gl_ctg
echo "Annotate test corpus for gl_ctg UD_Galician-CTG"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Galician-CTG --model uppsala_gl_ctg /home/gael/Logiciels/ud-treebanks-v2.3/UD_Galician-CTG/gl_ctg-ud-test.txt > gl_ctg-ud-test.py.conllu
echo "Evaluate tokenizer gl_ctg UD_Galician-CTG"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Galician-CTG/gl_ctg-ud-test.conllu gl_ctg-ud-test.py.conllu
# got_proiel UD_Gothic-PROIEL
echo "Train tokenizer for got_proiel UD_Gothic-PROIEL"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Gothic-PROIEL  -ss -m uppsala_got_proiel
echo "Annotate test corpus for got_proiel UD_Gothic-PROIEL"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Gothic-PROIEL --model uppsala_got_proiel /home/gael/Logiciels/ud-treebanks-v2.3/UD_Gothic-PROIEL/got_proiel-ud-test.txt > got_proiel-ud-test.py.conllu
echo "Evaluate tokenizer got_proiel UD_Gothic-PROIEL"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Gothic-PROIEL/got_proiel-ud-test.conllu got_proiel-ud-test.py.conllu
# grc_perseus UD_Ancient_Greek-Perseus
echo "Train tokenizer for grc_perseus UD_Ancient_Greek-Perseus"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ancient_Greek-Perseus  -ss -m uppsala_grc_perseus
echo "Annotate test corpus for grc_perseus UD_Ancient_Greek-Perseus"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ancient_Greek-Perseus --model uppsala_grc_perseus /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ancient_Greek-Perseus/grc_perseus-ud-test.txt > grc_perseus-ud-test.py.conllu
echo "Evaluate tokenizer grc_perseus UD_Ancient_Greek-Perseus"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ancient_Greek-Perseus/grc_perseus-ud-test.conllu grc_perseus-ud-test.py.conllu
# grc_proiel UD_Ancient_Greek-PROIEL
echo "Train tokenizer for grc_proiel UD_Ancient_Greek-PROIEL"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ancient_Greek-PROIEL  -ss -m uppsala_grc_proiel
echo "Annotate test corpus for grc_proiel UD_Ancient_Greek-PROIEL"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ancient_Greek-PROIEL --model uppsala_grc_proiel /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ancient_Greek-PROIEL/grc_proiel-ud-test.txt > grc_proiel-ud-test.py.conllu
echo "Evaluate tokenizer grc_proiel UD_Ancient_Greek-PROIEL"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ancient_Greek-PROIEL/grc_proiel-ud-test.conllu grc_proiel-ud-test.py.conllu
# he_htb UD_Hebrew-HTB
echo "Train tokenizer for he_htb UD_Hebrew-HTB"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hebrew-HTB  -ss -m uppsala_he_htb
echo "Annotate test corpus for he_htb UD_Hebrew-HTB"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hebrew-HTB --model uppsala_he_htb /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hebrew-HTB/he_htb-ud-test.txt > he_htb-ud-test.py.conllu
echo "Evaluate tokenizer he_htb UD_Hebrew-HTB"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hebrew-HTB/he_htb-ud-test.conllu he_htb-ud-test.py.conllu
# hi_hdtb UD_Hindi-HDTB
echo "Train tokenizer for hi_hdtb UD_Hindi-HDTB"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hindi-HDTB  -ss -m uppsala_hi_hdtb
echo "Annotate test corpus for hi_hdtb UD_Hindi-HDTB"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hindi-HDTB --model uppsala_hi_hdtb /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hindi-HDTB/hi_hdtb-ud-test.txt > hi_hdtb-ud-test.py.conllu
echo "Evaluate tokenizer hi_hdtb UD_Hindi-HDTB"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hindi-HDTB/hi_hdtb-ud-test.conllu hi_hdtb-ud-test.py.conllu
# hr_set UD_Croatian-SET
echo "Train tokenizer for hr_set UD_Croatian-SET"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Croatian-SET  -ss -m uppsala_hr_set
echo "Annotate test corpus for hr_set UD_Croatian-SET"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Croatian-SET --model uppsala_hr_set /home/gael/Logiciels/ud-treebanks-v2.3/UD_Croatian-SET/hr_set-ud-test.txt > hr_set-ud-test.py.conllu
echo "Evaluate tokenizer hr_set UD_Croatian-SET"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Croatian-SET/hr_set-ud-test.conllu hr_set-ud-test.py.conllu
# hu_szeged UD_Hungarian-Szeged
echo "Train tokenizer for hu_szeged UD_Hungarian-Szeged"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hungarian-Szeged  -ss -m uppsala_hu_szeged
echo "Annotate test corpus for hu_szeged UD_Hungarian-Szeged"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hungarian-Szeged --model uppsala_hu_szeged /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hungarian-Szeged/hu_szeged-ud-test.txt > hu_szeged-ud-test.py.conllu
echo "Evaluate tokenizer hu_szeged UD_Hungarian-Szeged"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hungarian-Szeged/hu_szeged-ud-test.conllu hu_szeged-ud-test.py.conllu
# id_gsd UD_Indonesian-GSD
echo "Train tokenizer for id_gsd UD_Indonesian-GSD"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Indonesian-GSD  -ss -m uppsala_id_gsd
echo "Annotate test corpus for id_gsd UD_Indonesian-GSD"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Indonesian-GSD --model uppsala_id_gsd /home/gael/Logiciels/ud-treebanks-v2.3/UD_Indonesian-GSD/id_gsd-ud-test.txt > id_gsd-ud-test.py.conllu
echo "Evaluate tokenizer id_gsd UD_Indonesian-GSD"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Indonesian-GSD/id_gsd-ud-test.conllu id_gsd-ud-test.py.conllu
# it_isdt UD_Italian-ISDT
echo "Train tokenizer for it_isdt UD_Italian-ISDT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-ISDT  -ss -m uppsala_it_isdt
echo "Annotate test corpus for it_isdt UD_Italian-ISDT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-ISDT --model uppsala_it_isdt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-ISDT/it_isdt-ud-test.txt > it_isdt-ud-test.py.conllu
echo "Evaluate tokenizer it_isdt UD_Italian-ISDT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-ISDT/it_isdt-ud-test.conllu it_isdt-ud-test.py.conllu
# it_partut UD_Italian-ParTUT
echo "Train tokenizer for it_partut UD_Italian-ParTUT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-ParTUT  -ss -m uppsala_it_partut
echo "Annotate test corpus for it_partut UD_Italian-ParTUT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-ParTUT --model uppsala_it_partut /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-ParTUT/it_partut-ud-test.txt > it_partut-ud-test.py.conllu
echo "Evaluate tokenizer it_partut UD_Italian-ParTUT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-ParTUT/it_partut-ud-test.conllu it_partut-ud-test.py.conllu
# it_postwita UD_Italian-PoSTWITA
echo "Train tokenizer for it_postwita UD_Italian-PoSTWITA"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-PoSTWITA  -ss -m uppsala_it_postwita
echo "Annotate test corpus for it_postwita UD_Italian-PoSTWITA"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-PoSTWITA --model uppsala_it_postwita /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-PoSTWITA/it_postwita-ud-test.txt > it_postwita-ud-test.py.conllu
echo "Evaluate tokenizer it_postwita UD_Italian-PoSTWITA"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Italian-PoSTWITA/it_postwita-ud-test.conllu it_postwita-ud-test.py.conllu
# ja_bccwj UD_Japanese-BCCWJ
echo "Train tokenizer for ja_bccwj UD_Japanese-BCCWJ"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Japanese-BCCWJ  -ss -m uppsala_ja_bccwj
echo "Annotate test corpus for ja_bccwj UD_Japanese-BCCWJ"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Japanese-BCCWJ --model uppsala_ja_bccwj /home/gael/Logiciels/ud-treebanks-v2.3/UD_Japanese-BCCWJ/ja_bccwj-ud-test.txt > ja_bccwj-ud-test.py.conllu
echo "Evaluate tokenizer ja_bccwj UD_Japanese-BCCWJ"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Japanese-BCCWJ/ja_bccwj-ud-test.conllu ja_bccwj-ud-test.py.conllu
# ja_gsd UD_Japanese-GSD
echo "Train tokenizer for ja_gsd UD_Japanese-GSD"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Japanese-GSD  -ss -m uppsala_ja_gsd
echo "Annotate test corpus for ja_gsd UD_Japanese-GSD"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Japanese-GSD --model uppsala_ja_gsd /home/gael/Logiciels/ud-treebanks-v2.3/UD_Japanese-GSD/ja_gsd-ud-test.txt > ja_gsd-ud-test.py.conllu
echo "Evaluate tokenizer ja_gsd UD_Japanese-GSD"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Japanese-GSD/ja_gsd-ud-test.conllu ja_gsd-ud-test.py.conllu
# ko_gsd UD_Korean-GSD
echo "Train tokenizer for ko_gsd UD_Korean-GSD"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Korean-GSD  -ss -m uppsala_ko_gsd
echo "Annotate test corpus for ko_gsd UD_Korean-GSD"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Korean-GSD --model uppsala_ko_gsd /home/gael/Logiciels/ud-treebanks-v2.3/UD_Korean-GSD/ko_gsd-ud-test.txt > ko_gsd-ud-test.py.conllu
echo "Evaluate tokenizer ko_gsd UD_Korean-GSD"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Korean-GSD/ko_gsd-ud-test.conllu ko_gsd-ud-test.py.conllu
# ko_kaist UD_Korean-Kaist
echo "Train tokenizer for ko_kaist UD_Korean-Kaist"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Korean-Kaist  -ss -m uppsala_ko_kaist
echo "Annotate test corpus for ko_kaist UD_Korean-Kaist"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Korean-Kaist --model uppsala_ko_kaist /home/gael/Logiciels/ud-treebanks-v2.3/UD_Korean-Kaist/ko_kaist-ud-test.txt > ko_kaist-ud-test.py.conllu
echo "Evaluate tokenizer ko_kaist UD_Korean-Kaist"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Korean-Kaist/ko_kaist-ud-test.conllu ko_kaist-ud-test.py.conllu
# la_ittb UD_Latin-ITTB
echo "Train tokenizer for la_ittb UD_Latin-ITTB"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latin-ITTB  -ss -m uppsala_la_ittb
echo "Annotate test corpus for la_ittb UD_Latin-ITTB"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latin-ITTB --model uppsala_la_ittb /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latin-ITTB/la_ittb-ud-test.txt > la_ittb-ud-test.py.conllu
echo "Evaluate tokenizer la_ittb UD_Latin-ITTB"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latin-ITTB/la_ittb-ud-test.conllu la_ittb-ud-test.py.conllu
# la_proiel UD_Latin-PROIEL
echo "Train tokenizer for la_proiel UD_Latin-PROIEL"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latin-PROIEL  -ss -m uppsala_la_proiel
echo "Annotate test corpus for la_proiel UD_Latin-PROIEL"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latin-PROIEL --model uppsala_la_proiel /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latin-PROIEL/la_proiel-ud-test.txt > la_proiel-ud-test.py.conllu
echo "Evaluate tokenizer la_proiel UD_Latin-PROIEL"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latin-PROIEL/la_proiel-ud-test.conllu la_proiel-ud-test.py.conllu
# lt_hse UD_Lithuanian-HSE
echo "Train tokenizer for lt_hse UD_Lithuanian-HSE"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Lithuanian-HSE  -ss -m uppsala_lt_hse
echo "Annotate test corpus for lt_hse UD_Lithuanian-HSE"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Lithuanian-HSE --model uppsala_lt_hse /home/gael/Logiciels/ud-treebanks-v2.3/UD_Lithuanian-HSE/lt_hse-ud-test.txt > lt_hse-ud-test.py.conllu
echo "Evaluate tokenizer lt_hse UD_Lithuanian-HSE"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Lithuanian-HSE/lt_hse-ud-test.conllu lt_hse-ud-test.py.conllu
# lv_lvtb UD_Latvian-LVTB
echo "Train tokenizer for lv_lvtb UD_Latvian-LVTB"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latvian-LVTB  -ss -m uppsala_lv_lvtb
echo "Annotate test corpus for lv_lvtb UD_Latvian-LVTB"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latvian-LVTB --model uppsala_lv_lvtb /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latvian-LVTB/lv_lvtb-ud-test.txt > lv_lvtb-ud-test.py.conllu
echo "Evaluate tokenizer lv_lvtb UD_Latvian-LVTB"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Latvian-LVTB/lv_lvtb-ud-test.conllu lv_lvtb-ud-test.py.conllu
# mr_ufal UD_Marathi-UFAL
echo "Train tokenizer for mr_ufal UD_Marathi-UFAL"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Marathi-UFAL  -ss -m uppsala_mr_ufal
echo "Annotate test corpus for mr_ufal UD_Marathi-UFAL"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Marathi-UFAL --model uppsala_mr_ufal /home/gael/Logiciels/ud-treebanks-v2.3/UD_Marathi-UFAL/mr_ufal-ud-test.txt > mr_ufal-ud-test.py.conllu
echo "Evaluate tokenizer mr_ufal UD_Marathi-UFAL"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Marathi-UFAL/mr_ufal-ud-test.conllu mr_ufal-ud-test.py.conllu
# mt_mudt UD_Maltese-MUDT
echo "Train tokenizer for mt_mudt UD_Maltese-MUDT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Maltese-MUDT  -ss -m uppsala_mt_mudt
echo "Annotate test corpus for mt_mudt UD_Maltese-MUDT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Maltese-MUDT --model uppsala_mt_mudt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Maltese-MUDT/mt_mudt-ud-test.txt > mt_mudt-ud-test.py.conllu
echo "Evaluate tokenizer mt_mudt UD_Maltese-MUDT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Maltese-MUDT/mt_mudt-ud-test.conllu mt_mudt-ud-test.py.conllu
# nl_alpino UD_Dutch-Alpino
echo "Train tokenizer for nl_alpino UD_Dutch-Alpino"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Dutch-Alpino  -ss -m uppsala_nl_alpino
echo "Annotate test corpus for nl_alpino UD_Dutch-Alpino"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Dutch-Alpino --model uppsala_nl_alpino /home/gael/Logiciels/ud-treebanks-v2.3/UD_Dutch-Alpino/nl_alpino-ud-test.txt > nl_alpino-ud-test.py.conllu
echo "Evaluate tokenizer nl_alpino UD_Dutch-Alpino"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Dutch-Alpino/nl_alpino-ud-test.conllu nl_alpino-ud-test.py.conllu
# nl_lassysmall UD_Dutch-LassySmall
echo "Train tokenizer for nl_lassysmall UD_Dutch-LassySmall"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Dutch-LassySmall  -ss -m uppsala_nl_lassysmall
echo "Annotate test corpus for nl_lassysmall UD_Dutch-LassySmall"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Dutch-LassySmall --model uppsala_nl_lassysmall /home/gael/Logiciels/ud-treebanks-v2.3/UD_Dutch-LassySmall/nl_lassysmall-ud-test.txt > nl_lassysmall-ud-test.py.conllu
echo "Evaluate tokenizer nl_lassysmall UD_Dutch-LassySmall"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Dutch-LassySmall/nl_lassysmall-ud-test.conllu nl_lassysmall-ud-test.py.conllu
# no_bokmaal UD_Norwegian-Bokmaal
echo "Train tokenizer for no_bokmaal UD_Norwegian-Bokmaal"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Norwegian-Bokmaal  -ss -m uppsala_no_bokmaal
echo "Annotate test corpus for no_bokmaal UD_Norwegian-Bokmaal"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Norwegian-Bokmaal --model uppsala_no_bokmaal /home/gael/Logiciels/ud-treebanks-v2.3/UD_Norwegian-Bokmaal/no_bokmaal-ud-test.txt > no_bokmaal-ud-test.py.conllu
echo "Evaluate tokenizer no_bokmaal UD_Norwegian-Bokmaal"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Norwegian-Bokmaal/no_bokmaal-ud-test.conllu no_bokmaal-ud-test.py.conllu
# no_nynorsk UD_Norwegian-Nynorsk
echo "Train tokenizer for no_nynorsk UD_Norwegian-Nynorsk"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Norwegian-Nynorsk  -ss -m uppsala_no_nynorsk
echo "Annotate test corpus for no_nynorsk UD_Norwegian-Nynorsk"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Norwegian-Nynorsk --model uppsala_no_nynorsk /home/gael/Logiciels/ud-treebanks-v2.3/UD_Norwegian-Nynorsk/no_nynorsk-ud-test.txt > no_nynorsk-ud-test.py.conllu
echo "Evaluate tokenizer no_nynorsk UD_Norwegian-Nynorsk"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Norwegian-Nynorsk/no_nynorsk-ud-test.conllu no_nynorsk-ud-test.py.conllu
# pl_lfg UD_Polish-LFG
echo "Train tokenizer for pl_lfg UD_Polish-LFG"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Polish-LFG  -ss -m uppsala_pl_lfg
echo "Annotate test corpus for pl_lfg UD_Polish-LFG"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Polish-LFG --model uppsala_pl_lfg /home/gael/Logiciels/ud-treebanks-v2.3/UD_Polish-LFG/pl_lfg-ud-test.txt > pl_lfg-ud-test.py.conllu
echo "Evaluate tokenizer pl_lfg UD_Polish-LFG"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Polish-LFG/pl_lfg-ud-test.conllu pl_lfg-ud-test.py.conllu
# pl_sz UD_Polish-SZ
echo "Train tokenizer for pl_sz UD_Polish-SZ"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Polish-SZ  -ss -m uppsala_pl_sz
echo "Annotate test corpus for pl_sz UD_Polish-SZ"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Polish-SZ --model uppsala_pl_sz /home/gael/Logiciels/ud-treebanks-v2.3/UD_Polish-SZ/pl_sz-ud-test.txt > pl_sz-ud-test.py.conllu
echo "Evaluate tokenizer pl_sz UD_Polish-SZ"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Polish-SZ/pl_sz-ud-test.conllu pl_sz-ud-test.py.conllu
# pt_bosque UD_Portuguese-Bosque
echo "Train tokenizer for pt_bosque UD_Portuguese-Bosque"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Portuguese-Bosque  -ss -m uppsala_pt_bosque
echo "Annotate test corpus for pt_bosque UD_Portuguese-Bosque"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Portuguese-Bosque --model uppsala_pt_bosque /home/gael/Logiciels/ud-treebanks-v2.3/UD_Portuguese-Bosque/pt_bosque-ud-test.txt > pt_bosque-ud-test.py.conllu
echo "Evaluate tokenizer pt_bosque UD_Portuguese-Bosque"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Portuguese-Bosque/pt_bosque-ud-test.conllu pt_bosque-ud-test.py.conllu
# pt_gsd UD_Portuguese-GSD
echo "Train tokenizer for pt_gsd UD_Portuguese-GSD"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Portuguese-GSD  -ss -m uppsala_pt_gsd
echo "Annotate test corpus for pt_gsd UD_Portuguese-GSD"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Portuguese-GSD --model uppsala_pt_gsd /home/gael/Logiciels/ud-treebanks-v2.3/UD_Portuguese-GSD/pt_gsd-ud-test.txt > pt_gsd-ud-test.py.conllu
echo "Evaluate tokenizer pt_gsd UD_Portuguese-GSD"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Portuguese-GSD/pt_gsd-ud-test.conllu pt_gsd-ud-test.py.conllu
# qhe_hiencs UD_Hindi_English-HIENCS
echo "Train tokenizer for qhe_hiencs UD_Hindi_English-HIENCS"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hindi_English-HIENCS  -ss -m uppsala_qhe_hiencs
echo "Annotate test corpus for qhe_hiencs UD_Hindi_English-HIENCS"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hindi_English-HIENCS --model uppsala_qhe_hiencs /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hindi_English-HIENCS/qhe_hiencs-ud-test.txt > qhe_hiencs-ud-test.py.conllu
echo "Evaluate tokenizer qhe_hiencs UD_Hindi_English-HIENCS"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Hindi_English-HIENCS/qhe_hiencs-ud-test.conllu qhe_hiencs-ud-test.py.conllu
# ro_nonstandard UD_Romanian-Nonstandard
echo "Train tokenizer for ro_nonstandard UD_Romanian-Nonstandard"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Romanian-Nonstandard  -ss -m uppsala_ro_nonstandard
echo "Annotate test corpus for ro_nonstandard UD_Romanian-Nonstandard"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Romanian-Nonstandard --model uppsala_ro_nonstandard /home/gael/Logiciels/ud-treebanks-v2.3/UD_Romanian-Nonstandard/ro_nonstandard-ud-test.txt > ro_nonstandard-ud-test.py.conllu
echo "Evaluate tokenizer ro_nonstandard UD_Romanian-Nonstandard"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Romanian-Nonstandard/ro_nonstandard-ud-test.conllu ro_nonstandard-ud-test.py.conllu
# ro_rrt UD_Romanian-RRT
echo "Train tokenizer for ro_rrt UD_Romanian-RRT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Romanian-RRT  -ss -m uppsala_ro_rrt
echo "Annotate test corpus for ro_rrt UD_Romanian-RRT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Romanian-RRT --model uppsala_ro_rrt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Romanian-RRT/ro_rrt-ud-test.txt > ro_rrt-ud-test.py.conllu
echo "Evaluate tokenizer ro_rrt UD_Romanian-RRT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Romanian-RRT/ro_rrt-ud-test.conllu ro_rrt-ud-test.py.conllu
# ru_gsd UD_Russian-GSD
echo "Train tokenizer for ru_gsd UD_Russian-GSD"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Russian-GSD  -ss -m uppsala_ru_gsd
echo "Annotate test corpus for ru_gsd UD_Russian-GSD"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Russian-GSD --model uppsala_ru_gsd /home/gael/Logiciels/ud-treebanks-v2.3/UD_Russian-GSD/ru_gsd-ud-test.txt > ru_gsd-ud-test.py.conllu
echo "Evaluate tokenizer ru_gsd UD_Russian-GSD"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Russian-GSD/ru_gsd-ud-test.conllu ru_gsd-ud-test.py.conllu
# ru_syntagrus UD_Russian-SynTagRus
echo "Train tokenizer for ru_syntagrus UD_Russian-SynTagRus"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Russian-SynTagRus  -ss -m uppsala_ru_syntagrus
echo "Annotate test corpus for ru_syntagrus UD_Russian-SynTagRus"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Russian-SynTagRus --model uppsala_ru_syntagrus /home/gael/Logiciels/ud-treebanks-v2.3/UD_Russian-SynTagRus/ru_syntagrus-ud-test.txt > ru_syntagrus-ud-test.py.conllu
echo "Evaluate tokenizer ru_syntagrus UD_Russian-SynTagRus"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Russian-SynTagRus/ru_syntagrus-ud-test.conllu ru_syntagrus-ud-test.py.conllu
# sk_snk UD_Slovak-SNK
echo "Train tokenizer for sk_snk UD_Slovak-SNK"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Slovak-SNK  -ss -m uppsala_sk_snk
echo "Annotate test corpus for sk_snk UD_Slovak-SNK"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Slovak-SNK --model uppsala_sk_snk /home/gael/Logiciels/ud-treebanks-v2.3/UD_Slovak-SNK/sk_snk-ud-test.txt > sk_snk-ud-test.py.conllu
echo "Evaluate tokenizer sk_snk UD_Slovak-SNK"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Slovak-SNK/sk_snk-ud-test.conllu sk_snk-ud-test.py.conllu
# sl_ssj UD_Slovenian-SSJ
echo "Train tokenizer for sl_ssj UD_Slovenian-SSJ"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Slovenian-SSJ  -ss -m uppsala_sl_ssj
echo "Annotate test corpus for sl_ssj UD_Slovenian-SSJ"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Slovenian-SSJ --model uppsala_sl_ssj /home/gael/Logiciels/ud-treebanks-v2.3/UD_Slovenian-SSJ/sl_ssj-ud-test.txt > sl_ssj-ud-test.py.conllu
echo "Evaluate tokenizer sl_ssj UD_Slovenian-SSJ"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Slovenian-SSJ/sl_ssj-ud-test.conllu sl_ssj-ud-test.py.conllu
# sr_set UD_Serbian-SET
echo "Train tokenizer for sr_set UD_Serbian-SET"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Serbian-SET  -ss -m uppsala_sr_set
echo "Annotate test corpus for sr_set UD_Serbian-SET"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Serbian-SET --model uppsala_sr_set /home/gael/Logiciels/ud-treebanks-v2.3/UD_Serbian-SET/sr_set-ud-test.txt > sr_set-ud-test.py.conllu
echo "Evaluate tokenizer sr_set UD_Serbian-SET"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Serbian-SET/sr_set-ud-test.conllu sr_set-ud-test.py.conllu
# sv_lines UD_Swedish-LinES
echo "Train tokenizer for sv_lines UD_Swedish-LinES"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish-LinES  -ss -m uppsala_sv_lines
echo "Annotate test corpus for sv_lines UD_Swedish-LinES"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish-LinES --model uppsala_sv_lines /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish-LinES/sv_lines-ud-test.txt > sv_lines-ud-test.py.conllu
echo "Evaluate tokenizer sv_lines UD_Swedish-LinES"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish-LinES/sv_lines-ud-test.conllu sv_lines-ud-test.py.conllu
# sv_talbanken UD_Swedish-Talbanken
echo "Train tokenizer for sv_talbanken UD_Swedish-Talbanken"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish-Talbanken  -ss -m uppsala_sv_talbanken
echo "Annotate test corpus for sv_talbanken UD_Swedish-Talbanken"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish-Talbanken --model uppsala_sv_talbanken /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish-Talbanken/sv_talbanken-ud-test.txt > sv_talbanken-ud-test.py.conllu
echo "Evaluate tokenizer sv_talbanken UD_Swedish-Talbanken"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish-Talbanken/sv_talbanken-ud-test.conllu sv_talbanken-ud-test.py.conllu
# swl_sslc UD_Swedish_Sign_Language-SSLC
echo "Train tokenizer for swl_sslc UD_Swedish_Sign_Language-SSLC"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish_Sign_Language-SSLC  -ss -m uppsala_swl_sslc
echo "Annotate test corpus for swl_sslc UD_Swedish_Sign_Language-SSLC"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish_Sign_Language-SSLC --model uppsala_swl_sslc /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish_Sign_Language-SSLC/swl_sslc-ud-test.txt > swl_sslc-ud-test.py.conllu
echo "Evaluate tokenizer swl_sslc UD_Swedish_Sign_Language-SSLC"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Swedish_Sign_Language-SSLC/swl_sslc-ud-test.conllu swl_sslc-ud-test.py.conllu
# ta_ttb UD_Tamil-TTB
echo "Train tokenizer for ta_ttb UD_Tamil-TTB"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Tamil-TTB  -ss -m uppsala_ta_ttb
echo "Annotate test corpus for ta_ttb UD_Tamil-TTB"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Tamil-TTB --model uppsala_ta_ttb /home/gael/Logiciels/ud-treebanks-v2.3/UD_Tamil-TTB/ta_ttb-ud-test.txt > ta_ttb-ud-test.py.conllu
echo "Evaluate tokenizer ta_ttb UD_Tamil-TTB"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Tamil-TTB/ta_ttb-ud-test.conllu ta_ttb-ud-test.py.conllu
# te_mtg UD_Telugu-MTG
echo "Train tokenizer for te_mtg UD_Telugu-MTG"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Telugu-MTG  -ss -m uppsala_te_mtg
echo "Annotate test corpus for te_mtg UD_Telugu-MTG"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Telugu-MTG --model uppsala_te_mtg /home/gael/Logiciels/ud-treebanks-v2.3/UD_Telugu-MTG/te_mtg-ud-test.txt > te_mtg-ud-test.py.conllu
echo "Evaluate tokenizer te_mtg UD_Telugu-MTG"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Telugu-MTG/te_mtg-ud-test.conllu te_mtg-ud-test.py.conllu
# tr_imst UD_Turkish-IMST
echo "Train tokenizer for tr_imst UD_Turkish-IMST"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Turkish-IMST  -ss -m uppsala_tr_imst
echo "Annotate test corpus for tr_imst UD_Turkish-IMST"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Turkish-IMST --model uppsala_tr_imst /home/gael/Logiciels/ud-treebanks-v2.3/UD_Turkish-IMST/tr_imst-ud-test.txt > tr_imst-ud-test.py.conllu
echo "Evaluate tokenizer tr_imst UD_Turkish-IMST"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Turkish-IMST/tr_imst-ud-test.conllu tr_imst-ud-test.py.conllu
# ug_udt UD_Uyghur-UDT
echo "Train tokenizer for ug_udt UD_Uyghur-UDT"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Uyghur-UDT  -ss -m uppsala_ug_udt
echo "Annotate test corpus for ug_udt UD_Uyghur-UDT"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Uyghur-UDT --model uppsala_ug_udt /home/gael/Logiciels/ud-treebanks-v2.3/UD_Uyghur-UDT/ug_udt-ud-test.txt > ug_udt-ud-test.py.conllu
echo "Evaluate tokenizer ug_udt UD_Uyghur-UDT"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Uyghur-UDT/ug_udt-ud-test.conllu ug_udt-ud-test.py.conllu
# uk_iu UD_Ukrainian-IU
echo "Train tokenizer for uk_iu UD_Ukrainian-IU"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ukrainian-IU  -ss -m uppsala_uk_iu
echo "Annotate test corpus for uk_iu UD_Ukrainian-IU"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ukrainian-IU --model uppsala_uk_iu /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ukrainian-IU/uk_iu-ud-test.txt > uk_iu-ud-test.py.conllu
echo "Evaluate tokenizer uk_iu UD_Ukrainian-IU"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Ukrainian-IU/uk_iu-ud-test.conllu uk_iu-ud-test.py.conllu
# ur_udtb UD_Urdu-UDTB
echo "Train tokenizer for ur_udtb UD_Urdu-UDTB"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Urdu-UDTB  -ss -m uppsala_ur_udtb
echo "Annotate test corpus for ur_udtb UD_Urdu-UDTB"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Urdu-UDTB --model uppsala_ur_udtb /home/gael/Logiciels/ud-treebanks-v2.3/UD_Urdu-UDTB/ur_udtb-ud-test.txt > ur_udtb-ud-test.py.conllu
echo "Evaluate tokenizer ur_udtb UD_Urdu-UDTB"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Urdu-UDTB/ur_udtb-ud-test.conllu ur_udtb-ud-test.py.conllu
# vi_vtb UD_Vietnamese-VTB
echo "Train tokenizer for vi_vtb UD_Vietnamese-VTB"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Vietnamese-VTB  -ss -m uppsala_vi_vtb
echo "Annotate test corpus for vi_vtb UD_Vietnamese-VTB"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Vietnamese-VTB --model uppsala_vi_vtb /home/gael/Logiciels/ud-treebanks-v2.3/UD_Vietnamese-VTB/vi_vtb-ud-test.txt > vi_vtb-ud-test.py.conllu
echo "Evaluate tokenizer vi_vtb UD_Vietnamese-VTB"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Vietnamese-VTB/vi_vtb-ud-test.conllu vi_vtb-ud-test.py.conllu
# zh_gsd UD_Chinese-GSD
echo "Train tokenizer for zh_gsd UD_Chinese-GSD"
python segmenter.py train -p /home/gael/Logiciels/ud-treebanks-v2.3/UD_Chinese-GSD  -ss -m uppsala_zh_gsd
echo "Annotate test corpus for zh_gsd UD_Chinese-GSD"
python segmenter_predict.py --path /home/gael/Logiciels/ud-treebanks-v2.3/UD_Chinese-GSD --model uppsala_zh_gsd /home/gael/Logiciels/ud-treebanks-v2.3/UD_Chinese-GSD/zh_gsd-ud-test.txt > zh_gsd-ud-test.py.conllu
echo "Evaluate tokenizer zh_gsd UD_Chinese-GSD"
python conll18_ud_eval.py -v /home/gael/Logiciels/ud-treebanks-v2.3/UD_Chinese-GSD/zh_gsd-ud-test.conllu zh_gsd-ud-test.py.conllu
