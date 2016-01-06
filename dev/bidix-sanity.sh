#!/bin/bash

pair=`pwd | grep -o 'apertium-[a-z][a-z][a-z]-[a-z][a-z][a-z]'`;
dir=`echo $pair | grep -o  -- '-[a-z][a-z][a-z]-[a-z][a-z][a-z]' | gsed 's/^-//g'`; 
dix=$pair.$dir.dix
lang2=`echo $dir | cut -f2 -d'-'`
gtdir=`echo $GTCORE | gsed 's/\(gtcore\|core\)//g'`;
analysator=$gtdir"/langs/"$lang2"/tools/mt/apertium/analyser-mt-apertium-desc.und.hfstol"

lt-expand ../$dix | gsed 's/\(<[^>]\+>\)\(<[^>]\+>\)\+/\1/g' | gsed 's/:[><]:/:/g'  | grep -v ':\([[:punct:]]\|[[:space:]]\)' | grep -v -- '-<' | grep -v '\/' | sort -u > /tmp/$dir.exp

cat /tmp/$dir.exp | cut -f2- -d':' | cut -f1 -d'<' | hfst-proc -w $analysator > /tmp/$dir.a

wc -l /tmp/$dir.exp /tmp/$dir.a

for line in `paste /tmp/$dir.exp /tmp/$dir.a  | gsed 's/\t/:/g' | gsed 's/ /¬/g'`; do
	lang1s=`echo $line | cut -f1 -d':'`;
	lang2s=`echo $line | cut -f2 -d':'`;
	lang2m=`echo $line | cut -f3 -d':'`;

	num=`echo "$lang2m" | grep -o "$lang2s" | wc -l`
#	echo $num" "$lang2m" "$lang2s;
	if [[ $num -eq 0 ]]; then
		echo -e "%\t"$line;
	else
#		echo -e "+\t"$line;
		continue
	fi
done
	

