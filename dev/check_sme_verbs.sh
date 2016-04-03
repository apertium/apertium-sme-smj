# ind dev
# sh check_sme_verbs.sh



grep vblex ../apertium-sme-smj.sme-smj.dix | tr '<' '>' | cut -d '>' -f1-10 |grep vblex |grep '"tv"' |cut -d '>' -f7 | sort -u > tvverbs 
grep vblex ../apertium-sme-smj.sme-smj.dix | tr '<' '>' | cut -d '>' -f1-10 |grep vblex |grep '"iv"' |cut -d '>' -f7 | sort -u > ivverbs
cat tvverbs |$LOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.xfst |grep '+TV' | cut -f2 | cut -d '+' -f1 |sort -u > gentv 
cat ivverbs |$LOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.xfst |grep '+IV' | cut -f2 | cut -d '+' -f1 |sort -u > geniv 
echo 'The verb is not in the sme-FST or has wrong transitivity in dix:' > wrongtrans.txt
echo '' >> wrongtrans.txt
comm -23 tvverbs gentv | LOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.xfst >> wrongtrans.txt
comm -23 ivverbs geniv | LOOKUP $GTHOME/langs/sme/src/analyser-gt-desc.xfst >> wrongtrans.txt
open wrongtrans.txt
