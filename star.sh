cat otpt_dir/*|grep 'tg-amt'|cut -d">" -f2|cut -d"<" -f1|tr ' ' '\n'|grep '^\*'|cut -c2-|tr -d '[.,:;)(?!]'|grep -v xxx |\
lookup $GTHOME/langs/nob/src/analyser-gt-desc.xfst |\
grep '?'|cut -f1|sort|uniq -c|sort -nr > dev/star-report.freq
