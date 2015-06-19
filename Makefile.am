###############################################################################
## Makefile for Northern Saami--Lule Saami
###############################################################################

VERSION=0.5.1
LANG1=sme
LANG2=smj
PREFIX1=$(LANG1)-$(LANG2)
PREFIX2=$(LANG2)-$(LANG1)

BASENAME=apertium-$(PREFIX1)

TARGETS_COMMON =			\
	$(PREFIX1).automorf.hfst	\
	$(PREFIX1).automorf-untrimmed.hfst \
	$(PREFIX1).mor.rlx.bin		\
	$(PREFIX1).syn.rlx.bin		\
	$(PREFIX1).autobil.bin		\
	$(PREFIX1).autolex.bin		\
	$(PREFIX1).autogen.hfst		\
	$(PREFIX1).t1x.bin		\
	$(PREFIX1).t2x.bin		\
	$(PREFIX1).t3x.bin		\
	$(PREFIX1).t4x.bin		\
	$(PREFIX1).t5x.bin		\
	$(PREFIX2).automorf.hfst	\
	$(PREFIX2).automorf-untrimmed.hfst \
	$(PREFIX2).mor.rlx.bin		\
	$(PREFIX2).syn.rlx.bin		\
	$(PREFIX2).autobil.bin		\
	$(PREFIX2).autolex.bin		\
	$(PREFIX2).autogen.hfst		\
	$(PREFIX2).t1x.bin		\
	$(PREFIX2).t2x.bin		\
	$(PREFIX2).t3x.bin


# This include desmees goals for install-modes, .deps/.d and .mode files:
@ap_include@

###############################################################################
## Monolingual transducers
###############################################################################

# -------------------
# Northern Saami analysis:
# -------------------

.deps/$(PREFIX1).autobil.prefixes: $(PREFIX1).autobil.bin .deps/.d
	lt-print $< | sed 's/ /@_SPACE_@/g' > .deps/$(PREFIX1).autobil.att
	hfst-txt2fst -e ε <  .deps/$(PREFIX1).autobil.att > .deps/$(PREFIX1).autobil.hfst
	hfst-project -p upper .deps/$(PREFIX1).autobil.hfst > .deps/$(PREFIX1).autobil.upper                                   # bidix
	echo ' [ ? - %+ ]* ' | hfst-regexp2fst > .deps/$(PREFIX1).any-nonplus.hfst                                             # [^+]*
	hfst-concatenate -1 .deps/$(PREFIX1).autobil.upper -2 .deps/$(PREFIX1).any-nonplus.hfst -o .deps/$(PREFIX1).autobil.nonplussed    # bidix [^+]*
	echo ' %+ ' | hfst-regexp2fst > .deps/single-plus.hfst                                                                 # +
	hfst-concatenate -1 .deps/single-plus.hfst -2 .deps/$(PREFIX1).autobil.nonplussed -o .deps/$(PREFIX1).autobil.postplus # + bidix [^+]*
	hfst-repeat -f0 -t1 -i .deps/$(PREFIX1).autobil.postplus -o .deps/$(PREFIX1).autobil.postplus.0,1                      # (+ bidix [^+]*){0,1} -- gives at most one +
	hfst-concatenate -1 .deps/$(PREFIX1).autobil.nonplussed -2 .deps/$(PREFIX1).autobil.postplus.0,1 -o $@                 # bidix [^+]* (+ bidix [^+]*){0,1}

.deps/$(LANG1).automorf.hfst: $(AP_SRC1)/$(BASENAME).$(PREFIX1).LR.att.gz .deps/.d
	$(ZCAT) $< | hfst-txt2fst > $@

.deps/$(LANG1).autogen.hfst: .deps/$(LANG1).automorf.hfst
	hfst-invert -i $< -o $@

.deps/$(PREFIX1).automorf-trimmed.hfst: .deps/$(LANG1).automorf.hfst .deps/$(PREFIX1).autobil.prefixes
	hfst-compose-intersect -1 $< -2 .deps/$(PREFIX1).autobil.prefixes -o $@

$(PREFIX1).automorf.hfst: .deps/$(PREFIX1).automorf-trimmed.hfst
	hfst-fst2fst -O -i $< -o $@

$(PREFIX1).automorf-untrimmed.hfst: .deps/$(LANG1).automorf.hfst
	hfst-fst2fst -O -i $< -o $@

# -------------------
# Northern Saami generation:
# ---------------------

$(PREFIX2).autogen.hfst: .deps/$(LANG1).autogen.hfst
	hfst-fst2fst -O -i $< -o $@


# -------------------
# Lule Saami analysis:
# -------------------

.deps/$(PREFIX2).autobil.prefixes: $(PREFIX2).autobil.bin .deps/.d
	lt-print $< | sed 's/ /@_SPACE_@/g' > .deps/$(PREFIX2).autobil.att
	hfst-txt2fst -e ε <  .deps/$(PREFIX2).autobil.att > .deps/$(PREFIX2).autobil.hfst
	hfst-project -p upper .deps/$(PREFIX2).autobil.hfst > .deps/$(PREFIX2).autobil.upper                                   # bidix
	echo ' [ ? - %+ ]* ' | hfst-regexp2fst > .deps/$(PREFIX2).any-nonplus.hfst                                             # [^+]*
	hfst-concatenate -1 .deps/$(PREFIX2).autobil.upper -2 .deps/$(PREFIX2).any-nonplus.hfst -o .deps/$(PREFIX2).autobil.nonplussed    # bidix [^+]*
	echo ' %+ ' | hfst-regexp2fst > .deps/single-plus.hfst                                                                 # +
	hfst-concatenate -1 .deps/single-plus.hfst -2 .deps/$(PREFIX2).autobil.nonplussed -o .deps/$(PREFIX2).autobil.postplus # + bidix [^+]*
	hfst-repeat -f0 -t1 -i .deps/$(PREFIX2).autobil.postplus -o .deps/$(PREFIX2).autobil.postplus.0,1                      # (+ bidix [^+]*){0,1} -- gives at most one +
	hfst-concatenate -1 .deps/$(PREFIX2).autobil.nonplussed -2 .deps/$(PREFIX2).autobil.postplus.0,1 -o $@                 # bidix [^+]* (+ bidix [^+]*){0,1}

.deps/$(LANG2).automorf.hfst: $(AP_SRC2)/$(BASENAME).$(PREFIX2).LR.att.gz .deps/.d
	$(ZCAT) $< | hfst-txt2fst > $@

.deps/$(LANG2).autogen.hfst: .deps/$(LANG2).automorf.hfst
	hfst-invert -i $< -o $@

.deps/$(PREFIX2).automorf-trimmed.hfst: .deps/$(LANG2).automorf.hfst .deps/$(PREFIX2).autobil.prefixes
	hfst-compose-intersect -1 $< -2 .deps/$(PREFIX2).autobil.prefixes -o $@

$(PREFIX2).automorf.hfst: .deps/$(PREFIX2).automorf-trimmed.hfst
	hfst-fst2fst -O -i $< -o $@

$(PREFIX2).automorf-untrimmed.hfst: .deps/$(LANG2).automorf.hfst
	hfst-fst2fst -O -i $< -o $@

# -------------------
# Lule Saami generation:
# ---------------------

$(PREFIX1).autogen.hfst: .deps/$(LANG2).autogen.hfst
	hfst-fst2fst -O -i $< -o $@


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
	apertium-validate-transfer $<
	apertium-preprocess-transfer $< $@

$(PREFIX1).t2x.bin: $(BASENAME).$(PREFIX1).t2x
	apertium-validate-interchunk $<
	apertium-preprocess-transfer $< $@

$(PREFIX1).t3x.bin: $(BASENAME).$(PREFIX1).t3x
	apertium-validate-interchunk $<
	apertium-preprocess-transfer $< $@

$(PREFIX1).t4x.bin: $(BASENAME).$(PREFIX1).t4x
	apertium-validate-interchunk $<
	apertium-preprocess-transfer $< $@

$(PREFIX1).t5x.bin: $(BASENAME).$(PREFIX1).t5x
	apertium-validate-postchunk $<
	apertium-preprocess-transfer $< $@


$(PREFIX2).t1x.bin: $(BASENAME).$(PREFIX2).t1x
	apertium-validate-transfer $<
	apertium-preprocess-transfer $< $@

$(PREFIX2).t2x.bin: $(BASENAME).$(PREFIX2).t2x
	apertium-validate-interchunk $<
	apertium-preprocess-transfer $< $@

$(PREFIX2).t3x.bin: $(BASENAME).$(PREFIX2).t3x
	apertium-validate-postchunk $<
	apertium-preprocess-transfer $< $@


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
apertium_sme_smj_DATA=  \
        $(TARGETS_COMMON)		\
	$(BASENAME).$(PREFIX1).t1x	\
	$(BASENAME).$(PREFIX1).t2x	\
	$(BASENAME).$(PREFIX1).t3x	\
	$(BASENAME).$(PREFIX1).t4x	\
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


###############################################################################
## Test
###############################################################################

test: all
	echo "Leage buorre" | apertium -d . sme-smj | tee .test-mt
	@echo "Liege buorre" > .test-ref
	@diff .test-ref .test-mt
	@rm .test-ref .test-mt
