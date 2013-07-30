VERSION=0.1.0
LANG1=sme
LANG2=smj
PREFIX1=$(LANG1)-$(LANG2)
PREFIX2=$(LANG2)-$(LANG1)

BASENAME=apertium-$(PREFIX1)

TARGETS_COMMON = \
     $(PREFIX1).automorf.hfst $(PREFIX1).autobil.bin $(PREFIX1).autogen.hfst \
     $(PREFIX1).lex.bin $(PREFIX1).rlx.bin $(PREFIX1).autopgen.bin \
     $(PREFIX1).t1x.bin $(PREFIX1).t2x.bin $(PREFIX1).t3x.bin $(PREFIX1).t4x.bin $(PREFIX1).t5x.bin pre-$(LANG1).t1x.bin \
     $(PREFIX2).t2x.bin $(PREFIX2).t3x.bin $(PREFIX2).automorf.hfst modes 

##
# Northern Sami -> Lule Sami
##

.deps/$(PREFIX1).autobil.prefixes: $(PREFIX1).autobil.bin
	if [ ! -d .deps ]; then mkdir .deps; fi
	lt-print $(PREFIX1).autobil.bin | sed 's/ /@_SPACE_@/g' > .deps/$(PREFIX1).autobil.att
	hfst-txt2fst -e ε <  .deps/$(PREFIX1).autobil.att > .deps/$(PREFIX1).autobil.hfst
	hfst-project -p upper .deps/$(PREFIX1).autobil.hfst > .deps/$(PREFIX1).autobil.upper
	echo " ?* " | hfst-regexp2fst > .deps/any-symbol.hfst
	hfst-concatenate -1 .deps/$(PREFIX1).autobil.upper -2 .deps/any-symbol.hfst -o .deps/$(PREFIX1).autobil.prefixes

$(PREFIX1).automorf.hfst: $(BASENAME).$(LANG1).att.gz .deps/$(PREFIX1).autobil.prefixes
	$(ZCAT) $< | hfst-txt2fst > .deps/$(LANG1).automorf.hfst
	hfst-compose-intersect -1 .deps/$(LANG1).automorf.hfst -2 .deps/$(PREFIX1).autobil.prefixes -o .deps/$(PREFIX1).automorf.trimmed
	hfst-fst2fst -O -i .deps/$(PREFIX1).automorf.trimmed -o $@


$(PREFIX1).autogen.hfst: $(BASENAME).$(LANG2).att.gz
	$(ZCAT) $< | hfst-txt2fst | hfst-invert | hfst-fst2fst -O > $@

$(PREFIX2).automorf.hfst: $(BASENAME).$(LANG2).att.gz
	$(ZCAT) $< | hfst-txt2fst | hfst-fst2fst -O > $@

#
# Bidix
#

$(PREFIX1).autobil.bin: $(BASENAME).$(PREFIX1).dix
	apertium-validate-dictionary $(BASENAME).$(PREFIX1).dix
	lt-comp lr $(BASENAME).$(PREFIX1).dix $@

#
# Postgeneration dictionary
#

$(PREFIX1).autopgen.bin: $(BASENAME).post-$(LANG2).dix
	apertium-validate-dictionary $(BASENAME).post-$(LANG2).dix
	lt-comp lr $(BASENAME).post-$(LANG2).dix $@

#
# Constraint grammars
#

$(PREFIX1).rlx.bin: $(BASENAME).$(PREFIX1).rlx
	cg-comp $(BASENAME).$(PREFIX1).rlx $@

$(PREFIX1).lex.bin: $(BASENAME).$(PREFIX1).lex
	cg-comp $(BASENAME).$(PREFIX1).lex $@

#
# Transfer rules
#

$(PREFIX1).t1x.bin: $(BASENAME).$(PREFIX1).t1x
	apertium-validate-transfer $(BASENAME).$(PREFIX1).t1x
	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t1x $@

$(PREFIX1).t2x.bin: $(BASENAME).$(PREFIX1).t2x
	apertium-validate-interchunk $(BASENAME).$(PREFIX1).t2x
	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t2x $@

$(PREFIX1).t3x.bin: $(BASENAME).$(PREFIX1).t3x
	apertium-validate-interchunk $(BASENAME).$(PREFIX1).t3x
	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t3x $@

$(PREFIX1).t4x.bin: $(BASENAME).$(PREFIX1).t4x
	apertium-validate-interchunk $(BASENAME).$(PREFIX1).t4x
	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t4x $@

$(PREFIX1).t5x.bin: $(BASENAME).$(PREFIX1).t5x
	apertium-validate-postchunk $(BASENAME).$(PREFIX1).t5x
	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t5x $@

EXTRA_DIST=$(BASENAME).$(LANG1).lexc $(BASENAME).$(PREFIX1).dix \
           $(BASENAME).post-$(LANG1).dix $(BASENAME).post-$(LANG2).dix \
	   $(BASENAME).$(PREFIX1).dix \
	   $(BASENAME).$(PREFIX1).rlx \
	   $(BASENAME).$(PREFIX1).lex \
	   $(BASENAME).symbols.xml \
           $(PREFIX1).prob  \
           $(BASENAME).$(PREFIX1).t1x $(BASENAME).$(PREFIX1).t2x \
           $(BASENAME).$(PREFIX1).t3x $(BASENAME).$(PREFIX1).t4x\
           $(BASENAME).$(PREFIX1).t5x modes.xml 

#           $(LANG1)-tagger-data/README $(LANG2)-tagger-data/README 
#           $(BASENAME).$(LANG1).tsx 
#           $(BASENAME).$(LANG2).tsx  

apertium_sme_smjdir=$(prefix)/share/apertium/apertium-$(PREFIX1)/
apertium_sme_modesdir=$(prefix)/share/apertium/modes/

$(PREFIX1).mode: modes.xml 
	apertium-gen-modes modes.xml
	cp *.mode modes/

apertium_sme_smj_DATA=$(PREFIX1).automorf.hfst \
                    $(PREFIX1).autobil.bin \
                    $(PREFIX1).autogen.hfst \
                    $(PREFIX2).automorf.hfst \
		    $(PREFIX1).autopgen.bin \
                    $(PREFIX1).prob  \
		    $(PREFIX1).rlx.bin \
		    $(PREFIX1).lex.bin \
		    $(PREFIX1).t1x.bin $(PREFIX1).t2x.bin $(PREFIX1).t3x.bin $(PREFIX1).t4x.bin $(PREFIX1).t5x.bin \
		    $(PREFIX1).mode 
		    
#$(PREFIX2).mode
		  
#$(INSTALL_DATA) $(PREFIX2).mode $(apertium_sme_modesdir)

install-data-local:
	apertium-gen-modes modes.xml apertium-$(PREFIX1)
	cp *.mode modes/
	test -d $(DESTDIR)$(apertium_sme_modesdir) || mkdir $(DESTDIR)$(apertium_sme_modesdir)
	$(INSTALL_DATA) $(PREFIX1).mode $(DESTDIR)$(apertium_sme_modesdir)
	$(INSTALL_DATA) $(BASENAME).$(PREFIX1).t1x $(BASENAME).$(PREFIX1).t2x $(DESTDIR)$(apertium_sme_smjdir)
	$(INSTALL_DATA) $(BASENAME).$(PREFIX1).t3x $(BASENAME).$(PREFIX1).t4x $(DESTDIR)$(apertium_sme_smjdir)
	$(INSTALL_DATA) $(BASENAME).$(PREFIX1).t5x $(DESTDIR)$(apertium_sme_smjdir)

CLEANFILES = -rf $(TARGETS_COMMON) modes
