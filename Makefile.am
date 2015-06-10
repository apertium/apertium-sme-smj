###############################################################################
## Makefile for sme-smj
###############################################################################

VERSION=0.5.1
LANG1=sme
LANG2=smj
PREFIX1=$(LANG1)-$(LANG2)
PREFIX2=$(LANG2)-$(LANG1)

BASENAME=apertium-$(PREFIX1)

TARGETS_COMMON = \
	$(PREFIX1).autobil.bin \
	$(PREFIX1).autogen.hfst \
	$(PREFIX1).autolex.bin \
	$(PREFIX1).automorf.hfst \
	$(PREFIX1).mor.rlx.bin \
	$(PREFIX1).syn.rlx.bin \
	$(PREFIX1).t1x.bin  \
	$(PREFIX1).t1x.bin \
	$(PREFIX1).t2x.bin \
	$(PREFIX1).t3x.bin \
	$(PREFIX1).t4x.bin \
	$(PREFIX1).t5x.bin


# This include desmees goals for install-modes, .deps/.d and .mode files:
@ap_include@

###############################################################################
## Bidix-prefixes for trimming morphology
###############################################################################

.deps/$(PREFIX1).autobil.prefixes: $(PREFIX1).autobil.bin .deps/.d
	lt-print $< | sed 's/ /@_SPACE_@/g' > .deps/$(PREFIX1).autobil.att
	hfst-txt2fst -e ε <  .deps/$(PREFIX1).autobil.att > .deps/$(PREFIX1).autobil.hfst
	hfst-project -p upper .deps/$(PREFIX1).autobil.hfst > .deps/$(PREFIX1).autobil.upper
	echo ' [ ? - %+ ]* ' | hfst-regexp2fst > .deps/any-nonplus.hfst
	hfst-concatenate -1 .deps/$(PREFIX1).autobil.upper -2 .deps/any-nonplus.hfst -o .deps/$(PREFIX1).autobil.nonplussed 
	echo ' %+ ' | hfst-regexp2fst > .deps/single-plus.hfst
	hfst-concatenate -1 .deps/single-plus.hfst -2 .deps/$(PREFIX1).autobil.nonplussed -o .deps/$(PREFIX1).autobil.postplus
	hfst-repeat -f0 -t1 -i .deps/$(PREFIX1).autobil.postplus -o .deps/$(PREFIX1).autobil.postplus.0,1 
	hfst-concatenate -1 .deps/$(PREFIX1).autobil.nonplussed -2 .deps/$(PREFIX1).autobil.postplus.0,1 -o $@

.deps/$(PREFIX2).autobil.prefixes: $(PREFIX2).autobil.bin .deps/.d
	lt-print $< | sed 's/ /@_SPACE_@/g' > .deps/$(PREFIX2).autobil.att
	hfst-txt2fst -e ε <  .deps/$(PREFIX2).autobil.att > .deps/$(PREFIX2).autobil.hfst
	hfst-project -p upper .deps/$(PREFIX2).autobil.hfst > .deps/$(PREFIX2).autobil.upper
	echo ' [ ? - %+ ]* ' | hfst-regexp2fst > .deps/any-nonplus.hfst
	hfst-concatenate -1 .deps/$(PREFIX2).autobil.upper -2 .deps/any-nonplus.hfst -o .deps/$(PREFIX2).autobil.nonplussed 
	echo ' %+ ' | hfst-regexp2fst > .deps/single-plus.hfst
	hfst-concatenate -1 .deps/single-plus.hfst -2 .deps/$(PREFIX2).autobil.nonplussed -o .deps/$(PREFIX2).autobil.postplus 
	hfst-repeat -f0 -t1 -i .deps/$(PREFIX2).autobil.postplus -o .deps/$(PREFIX2).autobil.postplus.0,1
	hfst-concatenate -1 .deps/$(PREFIX2).autobil.nonplussed -2 .deps/$(PREFIX2).autobil.postplus.0,1 -o $@

###############################################################################
## Northern Saami→Lule Saami monolingual transducers
###############################################################################

# sme->smj mor
# apertium-sme-smj.sme-smj.LR.att.gz
$(PREFIX1).automorf.hfst: $(AP_SRC1)/$(BASENAME).$(PREFIX1).LR.att.gz .deps/$(PREFIX1).autobil.prefixes .deps/.d 
	$(ZCAT) $(AP_SRC1)/$(BASENAME).$(PREFIX1).LR.att.gz | hfst-txt2fst -o .deps/$(PREFIX1).automorf.untrimmed.hfst
	hfst-compose-intersect -1 .deps/$(PREFIX1).automorf.untrimmed.hfst -2 .deps/$(PREFIX1).autobil.prefixes -o .deps/$(PREFIX1).automorf.hfst
	hfst-fst2fst -O .deps/$(PREFIX1).automorf.hfst -o $@

# smj->sme mor
# apertium-sme-smj.smj-sme.LR.att.gz
$(PREFIX2).automorf.hfst: $(AP_SRC2)/$(BASENAME).$(PREFIX2).LR.att.gz .deps/$(PREFIX2).autobil.prefixes .deps/.d
	$(ZCAT) $(AP_SRC2)/$(BASENAME).$(PREFIX2).LR.att.gz | hfst-txt2fst -o .deps/$(PREFIX2).automorf.untrimmed.hfst
	hfst-compose-intersect -1 .deps/$(PREFIX2).automorf.untrimmed.hfst -2 .deps/$(PREFIX2).autobil.prefixes -o .deps/$(PREFIX2).automorf.hfst 
	hfst-fst2fst -O .deps/$(PREFIX2).automorf.hfst -o $@

# sme->smj gen
# apertium-smj.smj.RL.att.gz
$(PREFIX1).autogen.hfst: $(AP_SRC2)/apertium-$(LANG2).$(LANG2).RL.att.gz .deps/.d
	$(ZCAT) $< | hfst-txt2fst -o .deps/$(PREFIX1).automorf.hfst
	hfst-fst2fst -O .deps/$(PREFIX1).automorf.hfst -o $@
#	$(ZCAT) $<  > .deps/$(PREFIX1).autogen.RL.att
#	lt-comp lr .deps/$(PREFIX1).autogen.RL.att $@

# smj->sme gen
# apertium-sme.sme.RL.att.gz
$(PREFIX2).autogen.hfst: $(AP_SRC1)/apertium-$(LANG1).$(LANG1).RL.att.gz .deps/.d
	$(ZCAT) $< | hfst-txt2fst -o .deps/$(PREFIX2).automorf.hfst
	hfst-fst2fst -O .deps/$(PREFIX2).automorf.hfst -o $@


###############################################################################
## Prob files for tagger
###############################################################################

#$(PREFIX1).prob: $(AP_SRC1)/$(LANG1).prob
#	cp $< $@

###############################################################################
## Bilingual dictionaries
###############################################################################

$(PREFIX1).autobil.bin: $(BASENAME).$(PREFIX1).dix
	apertium-validate-dictionary $<
	lt-comp lr $< $@

$(PREFIX2).autobil.bin: $(BASENAME).$(PREFIX1).dix
	apertium-validate-dictionary $< 
	lt-comp rl $< $@

###############################################################################
## Disambiguation rules 
###############################################################################

$(PREFIX1).mor.rlx.bin: $(AP_SRC1)/$(LANG1).mor.rlx.bin
	cp $< $@

$(PREFIX2).mor.rlx.bin: $(AP_SRC2)/$(LANG2).mor.rlx.bin
	cp $< $@

$(PREFIX1).syn.rlx.bin: $(AP_SRC1)/$(LANG1).syn.rlx.bin
	cp $< $@

$(PREFIX2).syn.rlx.bin: $(AP_SRC2)/$(LANG2).syn.rlx.bin
	cp $< $@


###############################################################################
## Lexical selection rules
###############################################################################

$(PREFIX1).autolex.bin: $(BASENAME).$(PREFIX1).lex
	cg-comp $< $@

$(PREFIX2).autolex.bin: $(BASENAME).$(PREFIX2).lrx
	lrx-comp $< $@

###############################################################################
## Structural transfer rules
###############################################################################

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


###############################################################################
## Postgeneration dictionaries
###############################################################################

#$(PREFIX1).autopgen.bin: $(BASENAME).post-$(LANG1).dix
#	apertium-validate-dictionary $<
#	lt-comp lr $< $@
#
#$(PREFIX2).autopgen.bin: $(BASENAME).post-$(LANG2).dix
#	apertium-validate-dictionary $< 
#	lt-comp lr $< $@

###############################################################################
## Distribution
###############################################################################

# Files which are distributed, but not built:
EXTRA_DIST=$(PREFIX1).prob \
	   $(PREFIX2).prob \
	   $(BASENAME).$(PREFIX1).t1x \
	   $(BASENAME).$(PREFIX1).t2x \
	   $(BASENAME).$(PREFIX1).t3x \
	   $(BASENAME).$(PREFIX1).t4x \
	   $(BASENAME).$(PREFIX1).t5x \
	   $(BASENAME).$(PREFIX2).t1x \
	   $(BASENAME).$(PREFIX2).t2x \
	   $(BASENAME).$(PREFIX2).t3x \
	   modes.xml


###############################################################################
## Installation
###############################################################################

apertium_sme_smjdir=$(prefix)/share/apertium/$(BASENAME)/

# Files which should be installed to $(prefix)/share/apertium/$(BASENAME)/:
apertium_sme_smj_DATA=$(TARGETS_COMMON) \
	$(BASENAME).$(PREFIX1).t1x \
	$(BASENAME).$(PREFIX1).t2x \
	$(BASENAME).$(PREFIX1).t3x \
	$(BASENAME).$(PREFIX1).t4x \
	$(BASENAME).$(PREFIX1).t5x 


# All modes are created by the same goal, listing several will just give problems with make -j2
noinst_DATA=modes/$(PREFIX1).mode

install-data-local: install-modes


###############################################################################
## Cleanup
###############################################################################

CLEANFILES = $(TARGETS_COMMON)
clean-local: 
	-rm -rf .deps modes
