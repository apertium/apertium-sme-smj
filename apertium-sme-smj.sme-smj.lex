DELIMITERS = "<.>" "<!>" "<?>" "<...>" "<¶>";

LIST Attr = Attr;
LIST Adj = A;
LIST Adv = Adv;
LIST N = N;

SECTION

# S0: huj
SUBSTITUTE (Adv) (Adv S0) ("hui"ri Adv) (1C Attr);

# S1: sieldes
SUBSTITUTE (Adv) (Adv S1) ("hui"ri Adv) (1C Adj) (NOT 1C Attr);
