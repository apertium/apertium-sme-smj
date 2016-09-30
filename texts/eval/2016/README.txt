Analysis of evaluation texts:
============================

A. Quantitative analysis
1. WER and PER (man ollu sii leat divvon)
	a) WER = word error rate (maid sátneordnet)
	b) PER = position-independent word error rate (ii sátneordnet)
2. Classification of corrections
3. Analysis of corrections

B. Qualitative analysis
1. Questionare


The text files for evaluation are in /texts.


WER, PER:
=========

Texts are evaluated on the command line (WER, PER) and on Fran's web page.

Webpage
http://xixona.dlsi.ua.es/~fran/eval/


Commandline:
The command used for WER and PER is
perl ~/apertium/trunk/apertium-eval-translator/apertium-eval-translator.pl -r texts/TextB_smj_mt.txt -t texts/TextB_smj_testeval.txt >> results.txt


Error classification:
=====================

The errors are listed in the list catalogue, created as follows:

cat texts/TextB_smj_san.txt |preprocess > list/smj_san.list
cat texts/TextB_smj_mt.txt |preprocess > list/smj_mt.list

diff list/smj_mt.list list/smj_san.list |sed 's/^[1-9]/™/g;'|tr '\n' ' '|tr '™' '\n'|cut -d" " -f2- > wer_analysis.csv

The resulting list is put in wer_analysis.ods for classification

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
