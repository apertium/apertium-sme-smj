# -*- mode: org -*-
#+STARTUP: showall

* How we mark lines

  Files are hopefully at about the same "quality level", meaning
  either most of it is good, or most of it is bad.

  If it seems most of the file is good, write a comment at the top
  like "# Most of this is good:" and only mark the bad lines, with an
  @-symbol before any bad lines.

  If it seems most of the file is bad, write a comment at the top like
  "# Most of this is bad:" and only mark the good lines, with an
  +-symbol before any good lines.

  Feel free to correct candidates entries if it's easily done quickly,
  otherwise put a ?-symbol before lines that need to be looked at or
  checked further later on. Note: a ? means that whole line-group (ie.
  all lines with that sme-word) is unfinished, not just that exact
  line. Similarly, a minus symbol (-) means there is a better
  smj-candidate than the generated one.


* Filename format

  The filenames have this format:
  : PoS_method
  or
  : PoS_method_inFST_NN_sourcelang
  where =PoS= is part of speech (V, N, A or nonVNA for "the rest") and
  =method= is one of

  - decomp :: input is compound analysed, parts are translated with
              existing dictionaries and glued back together
  - precomp :: existing dictionaries are compound analysed to create a
               dictionary of compound-part-translations; then input is
               compound analysed, parts are translated using the
               decompounded dictionaries, and glued back together
  - xfst :: using =$GTHOME/words/dicts/smesmj/scripts/sme2smj-$PoS.fst=
  - lexc :: using =$GTHOME/words/dicts/smesmj/bin/smesmj.fst=
  - loan :: input is translated using very simple loan-word regex
            replacement rules
  - syn :: input was translated by following synonym-paths in existing
           dictionaries, so if a dictionary has translations A-B, A-C,
           E-C, then we assume B and C are synonyms and add E-B
  - cross :: input was translated by crossing two dictionaries A-B and
             B-C to get A-C
  - intersection :: words where the same candidate-pair was generated
                    by several methods (all alternative candidates of
                    that nob-word will also go in this file)

  The =sourcelang= is the input for the method (nob or sme), while
  =inFST= is "ana" or "noana" depending on whether the word had an
  analysis _with the right PoS_ in
  =$GTHOME/langs/${lang}/src/analyser-gt-desc.xfst=.

  The numbers (=NN= above) indicate the frequency rank; the =00= file
  contains the 1000 highest-frequency candidates, the =01= the 1000
  next-highest-frequency candidates, and so on. Within each file,
  candidates are sorted alphabetically by the reverse of the source
  string (so e.g. all words ending in «-miljø» will be near each
  other).


* Output file format

  The files include both nob and sme translations for the candidates,
  annotated with normalised frequencies for all the three words as
  well as number of hits in parallel sentences. The format is,
  tab-separated:

  : sme 	candidate	nob	fr_sme	fr_candidate	fr_nob	para_hits

