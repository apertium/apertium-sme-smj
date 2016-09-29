
Text files for evaluation are in texts.

WER, PER:
=========

Texts are evaluated on the command line (WER, PER) and on Fran's web page.

Webpage
http://xixona.dlsi.ua.es/~fran/eval/


Commandline:
The command used for WER and PER is
perl ~/apertium/trunk/apertium-eval-translator/apertium-eval-translator-line.pl -r smn.mt -t MTtext_MS.txt



Error classification:
=====================

The errors are listed in the list catalogue, created as follows:

cat 2-2016/MTeval_MS.txt |preprocess > list/MTeval_MS.list
diff list/smn_mt.list list/MTeval_IM.list |sed 's/^[1-9]/™/g;'|tr '\n' ' '|tr '™' '\n'|cut -d" " -f2-

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
