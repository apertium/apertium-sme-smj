Evaluerenteavsttaid analyseren


A Kvantitatiivalaš analysa
1. WER ja PER (man ollu sii leat divvon)
WER = word error rate (maid sátneordnet)
PER = position-independent word error rate (ii sátneordnet)
2. Divvumiid klassifiseren
3. Divvumiid analysa
B. Kvalitatiivalaš analysa
1. Jearranskovit


Text files for evaluation are in :

WER, PER:
=========

Texts are evaluated on the command line (WER, PER) and on Fran's web page.

Webpage
http://xixona.dlsi.ua.es/~fran/eval/


Commandline:
The command used for WER and PER is
perl ~/apertium/trunk/apertium-eval-translator/apertium-eval-translator-line.pl -r texts/TextB_smj_mt.txt -t texts/TextB_smj_testeval.txt >> results.txt



Error classification:
=====================

The errors are listed in the list catalogue, created as follows:

cat texts/TextB_smj_testeval.txt |preprocess > list/texts/smj_testeval.list
cat texts/TextB_smj_mt.txt |preprocess > list/texts/smj_mt.list

diff list/smj_mt.list list/smj_testeval.list |sed 's/^[1-9]/™/g;'|tr '\n' ' '|tr '™' '\n'|cut -d" " -f2- > wer_analysis.csv

The resulting list is put in wer_analysis.ods for classifilation

Values for classification:
1 = lexical selection
2 = error in generation (wrong shape of wordform)
3 = error in choice of form (wrong wordform selected)
4 = word order (word order changed, word deleted or added)
5 = punctuation mark added or deleted.

Original files
==============

The original files are in
techdoc/mt/smesmj/....somewhere
