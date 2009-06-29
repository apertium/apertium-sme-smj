#!/usr/bin/python
# coding=utf-8
# -*- encoding: utf-8 -*-

import sys, codecs, copy;

sys.stdin  = codecs.getreader('utf-8')(sys.stdin);
sys.stdout = codecs.getwriter('utf-8')(sys.stdout);
sys.stderr = codecs.getwriter('utf-8')(sys.stderr);

#earránit;IV
#eksploderet;IV
#eksperimenteret;IV

#transitivitat = {};
#
#for line in file(sys.argv[2]).read().split('\n'): #{
#	if len(line) < 2: #{
#		continue;
#	#}
#	row = line.split(';');
#	transitivitat[row[0]] = row[1];
##}

intrans = {}
for line in file(sys.argv[2]).read().split('\n'): #{
	if len(line) < 2: #{
		continue;
	#}
	intrans[line] = line;	
#}

for line in file(sys.argv[1]).read().split('\n'): #{
	if line.count('<s n="V"/>') < 1: #{
		print line;
	else: #{
		smjlema = line.replace('<r>', '@').split('@')[1].replace('<s', '@').split('@')[0];

		if smjlema in intrans: #{
			print '+' , line.replace('<s n="V"/></r>', '<s n="V"/><s n="IV"/></r>');

		else: #{
			print line;
		#}	

#		if smelema in transitivitat: #{
#			print '+' , line.replace('<s n="V"/></l>', '<s n="V"/><s n="' + transitivitat[smelema] + '"/></l>');
#		else: #{
#			print line;
#		#}
	#}
#}
