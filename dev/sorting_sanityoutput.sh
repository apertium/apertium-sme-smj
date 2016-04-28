# sh sorting_sanityoutput.sh (when in dev)
# script for removing propernouns from sanityoutput
# rev-sorting the smX-bidix words 
grep -v '<np>' sanityoutput > notprop_output
cat notprop_output | cut -d ':' -f2 |cut -d '<' -f1 > fila
paste notprop_output fila |rev |sort | rev | cut -f1,2 > sortedsanityoutput_withoutprop.txt
rm fila notprop_output
see sortedsanityoutput_withoutprop.txt



