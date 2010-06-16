#!/bin/bash

###
###  This script trims a GT sm* analyser to an Apertium bidix
### 

if [ ! -e $GTHOME  ]; then
	echo "Please set the \$GTHOME environment variable";
	exit;
fi

LANG1=sme
LANG2=smj
BASENAME=apertium-$LANG1-$LANG2
PREFIX1=$LANG1-$LANG2
SRC=$GTHOME/gt/$LANG2/src
EXP=`mktemp /tmp/exp.XXXXX`;
VTMP=`mktemp /tmp/vtmp.XXXX`;
NTMP=`mktemp /tmp/ntmp.XXXX`;
ATMP=`mktemp /tmp/atmp.XXXX`;
NPTMP=`mktemp /tmp/nptmp.XXXX`;
DEV=`dirname $0`
OUTFILE=$DEV/../$BASENAME.$LANG2.lexc

echo "GTHOME in $SRC";
echo "OUTFILE is $OUTFILE";

function grepextract {
    # global $EXP
    local GREP=$1; 
    local LEXC=$2;
    local TMP=$3;
    # global $OUTFILE
    cat $LEXC | sed 's/0//g' | sed 's/\^//g' | sed 's/#//g' > $TMP;
    for lema in `cat $EXP | sed 's/ /_/g' | grep "$GREP" | cut -f1 -d'<' | sort | uniq`; do
	lineno=`grep -nH -e "^ \?$lema+" -e "^ \?$lema:" -e "^ \?$lema " -e "^ $lema" $TMP | cut -f2 -d':'`;
	# for i in $lineno, since we may have several entries per lema
	if [ "$lineno" != "" ]; then
            for ret in $lineno; do	
	    	head -n$ret $LEXC | tail -1 >> $OUTFILE;
            done
	fi
    done
    echo 'done.';
}

### Extract contents of bilingual dictionary (lema + pos)

lt-expand $DEV/../$BASENAME.$PREFIX1.dix  | grep -v REGEX | sed 's/:>:/:/g' | sed 's/:<:/:/g' | cut -f2 -d':' | cut -f1-2 -d'>' > $EXP 

### Extract head 

#cat $SRC/$LANG2-lex.txt > $OUTFILE
cat $SRC/$LANG2-lex.txt | grep -v '+Use\/NG' | grep -v '!^NG^' | grep -v '; !SUB' | grep -v '! !SOUTH' | grep -v '+Nom.*+Use\/Sub' | grep -v '+Gen.*+Use\/Sub' | grep -v '+Use\/Sub.*+V+TV' | grep -v '+Attr.*+Use\/Sub' | grep -v 'LEXICON PRSPRCTOADJ !SUB' | grep -v '+Imprt.*+Use\/Sub' > $OUTFILE



### Extract verbs
echo -n '+++ Verbs... '

VERBLEXC=$SRC/verb-$LANG2-lex.txt
v_point=`grep -nH ' VerbRoot' $VERBLEXC | cut -f2 -d':'`;
v_lenfile=`cat $VERBLEXC | wc -l`;
v_tail=`expr $v_lenfile - $v_point`;

head -n $v_point $VERBLEXC >> $OUTFILE; 
grepextract '<V' $VERBLEXC $VTMP;

### Extract noun
echo -n '+++ Nouns... '

NOUNLEXC=$SRC/noun-$LANG2-lex.txt
n_point=`grep -nH ' NounRoot$' $NOUNLEXC | cut -f2 -d':'`;
n_lenfile=`cat $NOUNLEXC | wc -l`;
n_tail=`expr $n_lenfile - $n_point`;

head -n $n_point $NOUNLEXC >> $OUTFILE; 
grepextract '<N' $NOUNLEXC $NTMP;

### Extract adjectives 
echo -n '+++ Adjectives... '

ADJLEXC=$SRC/adj-$LANG2-lex.txt
adj_point=`grep -nH 'LEXICON AdjectiveRoot$' $ADJLEXC | cut -f2 -d':' `;
adj_lenfile=`cat $ADJLEXC | wc -l`;
adj_tail=`expr $adj_lenfile - $adj_point`;

head -n $adj_point $ADJLEXC >> $OUTFILE; 
grepextract '<A' $ADJLEXC $ATMP;

### Extract proper nouns 

echo -n '+++ Proper nouns... ';

NPLEXC=$SRC/propernoun-$LANG2-lex.txt
np_point=`grep -nH ' ProperNoun$' $NPLEXC | cut -f2 -d':'`;
np_lenfile=`cat $NPLEXC | wc -l`;
np_tail=`expr $np_lenfile - $np_point`;

cat $SRC/propernoun-$LANG2-morph.txt >> $OUTFILE;

head -n $np_point $NPLEXC >> $OUTFILE;
grepextract '<N><Prop' $NPLEXC $NPTMP;

### Extract conjunctions
echo -n '+++ Conjunctions... ';

CCLEXC=$SRC/conjunction-$LANG2-lex.txt

cat $CCLEXC >> $OUTFILE;

echo 'done.';

### Extract adverbs
echo -n '+++ Adverbs... '

ADVLEXC=$SRC/adv-$LANG2-lex.txt

##adv_point=`grep -nH 'LEXICON Adverb$' $ADVLEXC | cut -f2 -d':' `;
##adv_lenfile=`cat $ADVLEXC | wc -l`;
##adv_tail=`expr $adv_lenfile - $adv_point`;
##
##adv_infl_point=`grep -nH 'LEXICON gadv' $ADVLEXC | cut -f2 -d':' `;
##adv_infl_tail=`expr $adv_lenfile - $adv_infl_point`;
##
##tail -n `expr $adv_infl_tail + 1` $ADVLEXC  | grep -v '^!' >> $OUTFILE;
##
##head -n $adv_point $ADVLEXC >> $OUTFILE; 
##grepextract '<Adv' $ADVLEXC $ATMP;

cat $ADVLEXC >> $OUTFILE;

echo 'done.';


### Extract subordinating conjunctions 
echo -n '+++ Subjunctions... ';

CSLEXC=$SRC/subjunction-$LANG2-lex.txt

cat $CSLEXC >> $OUTFILE;

echo 'done.';

### Extract pronouns 
echo -n '+++ Pronouns... ';

PRONLEXC=$SRC/pronoun-$LANG2-lex.txt

cat $PRONLEXC >> $OUTFILE;

echo 'done.';

### Extract particles
echo -n '+++ Particles... ';

PARTLEXC=$SRC/particle-$LANG2-lex.txt

cat $PARTLEXC >> $OUTFILE;

echo 'done.';

### Extract adpositions
echo -n '+++ Adpositions... ';

PPLEXC=$SRC/pp-$LANG2-lex.txt

cat $PPLEXC >> $OUTFILE;

echo 'done.';

### Extract adpositions
echo -n '+++ Numerals... ';

NUMLEXC=$SRC/numeral-$LANG2-lex.txt

cat $NUMLEXC >> $OUTFILE;

echo 'done.';

### Add abbreviations
echo -n '+++ Abbreviations... ';

ABBRLEXC=$SRC/abbr-$LANG2-lex.txt

cat $ABBRLEXC >> $OUTFILE;

echo 'done.';

### Add punctuation
echo -n '+++ Punctuation... ';

PUNCTLEXC=$SRC/punct-$LANG2-lex.txt

punct_point=`grep -nH ' real pilcrow' $PUNCTLEXC | cut -f2 -d':'`;
head -n $punct_point $PUNCTLEXC >> $OUTFILE;


echo 'done.';

### Cleanup

rm $EXP;
rm $VTMP;
rm $NTMP;
rm $ATMP;
rm $NPTMP;
