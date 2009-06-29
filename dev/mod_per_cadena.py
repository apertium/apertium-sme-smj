#!/usr/bin/python
# coding=utf-8
# -*- encoding: utf-8 -*-

import sys, codecs, copy;

sys.stdin  = codecs.getreader('utf-8')(sys.stdin);
sys.stdout = codecs.getwriter('utf-8')(sys.stdout);
sys.stderr = codecs.getwriter('utf-8')(sys.stderr);

processing = 0;
ine = 0;
out = '';

for line in sys.stdin.read().split('\n'): #{
	if line.count('<pardefs>') > 0: #{
		processing = 1;
	#}
	if line.count('</pardefs>') > 0: #{
		processing = 0;
	#}	


	if processing == 1: #{
		if line.count('<e>') > 0: #{
			ine = 1;

		#}
		if line.count('</e>') > 0: #{
			out = out + '\n' + line;
			if out.count('<e r="') > 0: #{
				sys.stdout.write(out);
			else: #{
				sys.stdout.write(out);
			#}
			ine = 0;
			out = '';
			continue;
		#}

		if ine == 1: #{
			if line.count('<l>') > 0 and line.count(u'ä') > 0: #{
				out = out.replace('<e>', '<e r="LR">');
			#}
			out = out + '\n' + line;
		else: #{
			if line.count('</pardef>') > 0: #{
				sys.stdout.write('\n' + line + '\n');
			elif line.count('<pardef ') > 0: #{
				sys.stdout.write('\n' + line);
			else: #{
				sys.stdout.write(line + '\n');
			#}
			continue;
		#}

	else: #{
		sys.stdout.write(line + '\n');	
	#}
#}

