cat otpt_dir/*|grep 'tg-amt'|cut -d">" -f2-|cut -d"<" -f1|sed 's/&gt;/>/g;'|sed 's/&lt;/</g;'|tr ' ' '\n'|grep '^#'|tr -d '.,"!:'|sort|uniq -c|sort -nr > dev/hash-report.freq 
