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

# First we compile the twol and lexc files.
.deps/$(LANG1).twol.hfst: $(BASENAME).$(LANG1).twol
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-twolc -r -i $(BASENAME).$(LANG1).twol -o $@

.deps/$(LANG1).lexc.hfst: $(BASENAME).$(LANG1).lexc
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-lexc $(BASENAME).$(LANG1).lexc -o $@

.deps/$(LANG2).twol.hfst: $(BASENAME).$(LANG2).twol
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-twolc -r -i $(BASENAME).$(LANG2).twol -o $@

.deps/$(LANG2).lexc.hfst: $(BASENAME).$(LANG2).lexc
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-lexc $(BASENAME).$(LANG2).lexc -o $@

#
# These are scripts that remove unwanted tags
#
.deps/xfst2apertium.useless.generation.twol.hfst: dev/xfst2apertium.useless.generation.twol
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-twolc -r -i dev/xfst2apertium.useless.generation.twol -o $@

.deps/xfst2apertium.useless.analysis.twol.hfst: dev/xfst2apertium.useless.analysis.twol
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-twolc -r -i dev/xfst2apertium.useless.analysis.twol -o $@


.deps/xfst2apertium.hashtags.twol.hfst: dev/xfst2apertium.hashtags.twol
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-twolc -r -i dev/xfst2apertium.hashtags.twol -o $@

#
# This is a generator 'apertium-sme-smj.sme.hfst'
#
.deps/$(BASENAME).$(LANG1).hfst: .deps/$(LANG1).lexc.hfst .deps/$(LANG1).twol.hfst dev/xfst2apertium.relabel 
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-compose-intersect -l .deps/$(LANG1).lexc.hfst .deps/$(LANG1).twol.hfst -o $@

#
# This is a generator 'apertium-sme-smj.smj.hfst'
#
.deps/$(BASENAME).$(LANG2).hfst: .deps/$(LANG2).lexc.hfst .deps/$(LANG2).twol.hfst dev/xfst2apertium.relabel 
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-compose-intersect -l .deps/$(LANG2).lexc.hfst .deps/$(LANG2).twol.hfst -o $@

#
# The default form of the transducer is optimised
#
$(PREFIX1).automorf.hfst: .deps/$(BASENAME).$(LANG1).hfst .deps/xfst2apertium.useless.analysis.twol.hfst .deps/xfst2apertium.hashtags.twol.hfst dev/xfst2apertium.relabel
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-invert .deps/$(BASENAME).$(LANG1).hfst -o .deps/$(PREFIX1).automorf.hfst
	hfst-compose-intersect -l .deps/$(PREFIX1).automorf.hfst .deps/xfst2apertium.useless.analysis.twol.hfst -o .deps/$@.1.tmp
	hfst-compose-intersect -l .deps/$@.1.tmp .deps/xfst2apertium.hashtags.twol.hfst -o .deps/$@.2.tmp
	hfst-substitute -F dev/xfst2apertium.relabel -i .deps/$@.2.tmp -o .deps/$(PREFIX1).automorf.hfst
	hfst-lookup-optimize .deps/$(PREFIX1).automorf.hfst -o $@
	rm .deps/$@.1.tmp .deps/$@.2.tmp
#
# The default form of the transducer is optimised
#
$(PREFIX1).autogen.hfst: .deps/$(BASENAME).$(LANG2).hfst .deps/xfst2apertium.useless.generation.twol.hfst .deps/xfst2apertium.hashtags.twol.hfst dev/xfst2apertium.relabel
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-compose-intersect -l .deps/$(BASENAME).$(LANG2).hfst .deps/xfst2apertium.useless.generation.twol.hfst -o .deps/$@.1.tmp
	hfst-compose-intersect -l .deps/$@.1.tmp .deps/xfst2apertium.hashtags.twol.hfst -o .deps/$@.2.tmp
	hfst-substitute -F dev/xfst2apertium.relabel -i .deps/$@.2.tmp -o .deps/$(PREFIX1).autogen.hfst
	hfst-lookup-optimize .deps/$(PREFIX1).autogen.hfst -o $@
	rm .deps/$@.1.tmp .deps/$@.2.tmp

$(PREFIX2).automorf.hfst: .deps/$(PREFIX1).autogen.hfst
	hfst-invert .deps/$(PREFIX1).autogen.hfst -o .deps/$@
	hfst-lookup-optimize .deps/$@ -o $@

#
# Bidix
#

.deps/$(BASENAME).$(PREFIX1).dix: $(BASENAME).$(PREFIX1).dix lexchoicebil.xsl
	if [ ! -d .deps ]; then mkdir .deps; fi
	xsltproc lexchoicebil.xsl $(BASENAME).$(PREFIX1).dix > $@

$(PREFIX1).autobil.bin: .deps/$(BASENAME).$(PREFIX1).dix
	apertium-validate-dictionary .deps/$(BASENAME).$(PREFIX1).dix
	lt-comp lr .deps/$(BASENAME).$(PREFIX1).dix $@

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
	$(INSTALL_DATA) $(PREFIX1).mode $(apertium_sme_modesdir)
	$(INSTALL_DATA) $(BASENAME).$(PREFIX1).t1x $(BASENAME).$(PREFIX1).t2x $(apertium_sme_smjdir)
	$(INSTALL_DATA) $(BASENAME).$(PREFIX1).t3x $(BASENAME).$(PREFIX1).t4x $(apertium_sme_smjdir)
	$(INSTALL_DATA) $(BASENAME).$(PREFIX1).t5x $(apertium_sme_smjdir)

CLEANFILES = -rf $(TARGETS_COMMON) modes
