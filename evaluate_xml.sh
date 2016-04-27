#!/bin/bash
# file=$(basename $fl)
# a=/tmp/xx/file.tar.gz
# xpath=${a%/*}
# xbase=${a##*/}
# xfext=${xbase##*.}
# xpref=${xbase%.*}
# extension="${file##*.}"
# filename="${file%.*}"

# how to run the script:
# sh evaluate_xml.sh tmx_data/brosjyre_foresatte_np08_sme2smj.tmx

EVAL="$APERTIUM_HOME/apertium-eval-translator/apertium-eval-translator-line.pl"
path=`pwd`
dir=${path##*/}
prefix=${dir%-*}
sl=${prefix##*-}
tl=${dir##*-}
in_a=$1
in_p=${in_a##*/}
in_d=${in_a%/*}
in_f=${in_p%.*}
#in_sl=${in_f##*_}
in_prefix=${in_f%_*}
#echo $in_p
#echo $in_d
#echo $in_f
#echo $in_prefix
echo "Apertium MT evaluation of the file\n" $1
echo
ht="/tmp/"$in_prefix"_"$tl".txt"
xml_grep -text_only '*[@lang="smj"]' $1> $ht
mt="/tmp/"$in_prefix"_"$sl"2"$tl".txt"
xml_grep -text_only '*[@lang="sme"]' $1|apertium -d . $sl-$tl> $mt
echo
$EVAL -t $mt -r $ht

