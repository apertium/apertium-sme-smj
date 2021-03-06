# -*- cg-pre-pipe: "apertium -d . sme-smj-biltrans|cg-conv -a 2>/dev/null" -*-

#Distributed under the terms of the GNU General Public License version 2
# or any later version.


# ========== #
# Delimiters #
# ========== #

DELIMITERS = "<.>" "<!>" "<?>" "<...>" "<¶>";



# ============= #
# Tags and sets #
# ============= #

SETS

# I define end of clause and beginning of clause in a way so that the file
# may be read both by the CG-2 and the vislcg formalisms.

LIST BOS = (>>>) (<s>);
LIST EOS = (<<<) (</s>);

# CG3 doesn´t function without >>> and <<< !

# Tags declared as single-membered LISTs 
# ======================================

# Parts of speech
# ---------------

LIST N = n np ;
LIST A = adj ;
LIST Adv = adv ;
LIST V = vblex ;
LIST Pron = prn ;

LIST CS = cnjsub ;
LIST CCC = cnjcoo ;
SET CC = CCC - ("sihke") ;
SET CC-CS = CC OR CS ;
LIST Po = post ;
LIST Pr = pr ;

LIST Pcle = pcle ;
LIST Num = num ;
LIST Coll = coll ;
LIST Actor = actor ;
LIST G3 = g3 ;
LIST Prop = np ;

LIST LEFT = lquot ;
LIST RIGHT = rquot ;
LIST WEB = web ;

LIST V* = vblex* ;

# POS sub-categories
# ------------------

LIST Pers = pers ;
LIST Dem = dem ;
LIST Interr = itg ;

LIST Indef = ind ;

LIST Recipr = res ;
LIST Refl = ref ;
LIST Rel = rel ;
 
LIST Interj = ij ;
LIST Adp = adp ;
 

# Morphosyntactic properties
# --------------------------

LIST Nom = nom ;
LIST Acc = acc ;

LIST Gen = gen ;
LIST Ill = ill ;

LIST Loc = loc ;
LIST Com = com ;

LIST Ess = ess ;

LIST Sg = sg ;
LIST Pl = pl ;
LIST Du = du ;

LIST Cmpnd = cmp ;
 
LIST SgNomCmp = sgnomcmp ;
 
LIST SgGenCmp = sggencmp ;

LIST ShCmp = shcmp ;

LIST PxSg1 = px1sg ;
LIST PxSg2 = px2sg ;
LIST PxSg3 = px3sg ;
 
LIST PxDu1 = px1du ;
LIST PxDu2 = px2du ;
LIST PxDu3 = px3du ;
 
LIST PxPl1 = px1pl ;
LIST PxPl2 = px2pl ;
LIST PxPl3 = px3pl ;

LIST Comp = comp ;
LIST Superl = sup ;

LIST Attr = attr ;
LIST Ord = ord ;
 
LIST Qst = qst ;

LIST Known = known ;

# The ("ge" pcle) etc. are used in Apertium
LIST Foc_ge = foc_ge ("<ge>" pcle) ;
LIST Foc_gen = foc_gen ("<gen>" pcle) ;
LIST Foc_ges = foc_ges ("<ges>" pcle) ;
LIST Foc_gis = foc_gis ("<gis>" pcle) ;
LIST Foc_naj = foc_naj ("<nai>" pcle) ;
LIST Foc_ba = foc_ba ("<ba>" pcle) ;
LIST Foc_be = foc_be ("<be>" pcle) ;
LIST Foc_hal = foc_hal ("<hal>" pcle) ;
LIST Foc_han = foc_han ("<han>" pcle) ;
LIST Foc_bat = foc_bat ("<bat>" pcle) ;
LIST Foc_son = foc_son ("<son>" pcle) ;

LIST IV = iv ;
LIST TV = tv ;

LIST Der_Pass = der_passl der_passs ;

LIST Prt = pret;
LIST Prs = pres ;
 

LIST Ind = indic ;
LIST Pot = pot ;
LIST Cond = cond ;

LIST Imprt = imp ;
LIST ImprtII = imprtii ;

LIST Sg1 = (p1 sg) ;
LIST Sg2 = (p2 sg) ;
LIST Sg3 = (p3 sg) ;

LIST Du1 = (p1 du) ;
LIST Du2 = (p2 du) ;
LIST Du3 = (p3 du) ;

LIST Pl1 = (p1 pl) ;
LIST Pl2 = (p2 pl) ;
LIST Pl3 = (p3 pl) ;

LIST Inf = inf ;
LIST ConNeg = conneg ;
LIST Neg = neg ;

LIST PrfPrc = prfprc ;
LIST VGen = vgen ;

LIST PrsPrc = prsprc ;
 

LIST Ger = ger ;
LIST Sup = supn ;
LIST Actio = actio ;

LIST VActor = (der2 actor) ;
LIST VAbess = vabess ;

# Derivation
# ----------

LIST Der_adda = der_adda ;
LIST Der_ahtti = der_ahtti ;
LIST Der_alla = der_alla ;
LIST Der_asti = der_asti ;
LIST Der_easti = der_easti ;
LIST Der_d = der_d ;
LIST Der_eaddji = der_eaddji ;
LIST Der_eamoš = der_eamoš ;
LIST Der_amoš = der_amoš ;
LIST Der_eapmi = der_eapmi ;
LIST Der_geahtes = der_geahtes ;
LIST Der_gielat = der_gielat ;
LIST !better: = !better: ;
LIST Der_NuA = der_nua ;

LIST Der_h = der_h ;
LIST Der_heapmi = der_heapmi ;
LIST Der_hudda = der_hudda ;
LIST Der_huhtti = der_huhtti ;
LIST Der_huvva = der_huvva ;
LIST Der_halla = der_halla ;
LIST Der_j = der_j ;
LIST Der_l = der_l ;
LIST Der_laš = der_laš ;
LIST Der_las = der_las ;
LIST Der_hat = der_hat ;

LIST Der_meahttun = der_meahttun ;
LIST Der_muš = der_muš ;
LIST Der_n = der_n ;
LIST Der_st = der_st ;
LIST Der_stuvva = der_stuvva ;
LIST Der_upmi = der_upmi ;
LIST Der_supmi = der_supmi ;
LIST Der_vuohta = der_vuohta ;
LIST Der_goahti = der_goahti ;

LIST Der_lágan = der_lágan ;
LIST Der_lágán = der_lágán ;
LIST Der_lágaš = der_lágaš ;
LIST Der_jagáš = der_jagáš ;
LIST Der_jahkásaš = der_jahkásaš ;
LIST Der_diibmosaš = der_diibmosaš ;

LIST Der_Dimin = der_dimin ;
LIST Der_viđá = der_viđá ;
LIST Der_viđi = der_viđi ;
LIST Der_veara = der_veara ;
LIST Der_duohke = der_duohke ;
LIST Der_duohkai = der_duohkai ;
LIST Der_vuolle = der_vuolle ;
LIST Der_vuollai = der_vuollai ;
LIST Der_vuolde = der_vuolde ;

# Syntactic tags
# --------------

LIST @+FAUXV = @+FAUXV ;
LIST @+FMAINV = @+FMAINV ;
LIST @-FAUXV = @-FAUXV ;
 
LIST @-FMAINV = @-FMAINV ;
LIST @-FSUBJ→ = @-FSUBJ→ ;
LIST @-F←OBJ = @-F%OBJ ;
LIST @-FOBJ→ = @-FOBJ→ ;
LIST @SPRED←OBJ = @SPRED←OBJ ;
LIST @-FADVL = @-FADVL ;

SET FOBJ = @-F←OBJ OR @-FOBJ→ ; 
SET FMAINV = @-FMAINV OR @+FMAINV ;
SET FAUXV = @-FAUXV OR @+FAUXV ;

LIST @→ADVL = @→ADVL ;

LIST @ADVL← = @ADVL← ;


LIST @ADVL = @ADVL ;
LIST @HAB = @HAB ;
 
LIST @→N = @→N ;

LIST @N← = @N← ;
 

LIST @→A = @→A ;

LIST @P← = @P← ;

LIST @→P = @→P ;

LIST @HNOUN = @HNOUN ;
LIST @INTERJ = @INTERJ ;
 
LIST @→Num = @→Num;

LIST @Pron< = @Pron< ;
LIST @→Pron = @→Pron ;

LIST @Num← = @Num← ;

LIST @OBJ = @OBJ ;
LIST @←OBJ = @←OBJ ;
LIST @OBJ→ = @OBJ→ ;
LIST @OPRED = @OPRED ;
LIST @←OPRED = @←OPRED ;
LIST @OPRED→ = @OPRED→ ;
LIST @PCLE = @PCLE ;
LIST @COMP-CS← = @COMP-CS← ;
 
LIST @SPRED = @SPRED ;
LIST @←SPRED = @←SPRED ;
LIST @SPRED→ = @SPRED→ ;
LIST @SUBJ = @SUBJ ;
LIST @←SUBJ = @←SUBJ ;
LIST @SUBJ→ = @SUBJ→ ;
SET SUBJ = @←SUBJ OR @SUBJ→ OR @SUBJ ;
SET SPRED = @←SPRED OR @SPRED→ OR @SPRED ;
SET OPRED = @←OPRED OR @OPRED→ OR @OPRED ;

LIST @PPRED = @PPRED ;
 
LIST @APP = @APP ;
LIST @APP-N← = @APP-N← ;
LIST @APP-Pron← = @APP-Pron< ;
LIST @APP→Pron = @APP→Pron ;
LIST @APP-Num← = @APP-Num← ;
LIST @APP-ADVL← = @APP-ADVL← ;
LIST @VOC = @VOC ;

LIST @CVP = @CVP ;
LIST @CNP = @CNP ;

LIST OBJ = @←OBJ @OBJ→ @OBJ @-F%OBJ @-FOBJ→ ;
LIST ←OBJ = @-F←OBJ @←OBJ ;
LIST OBJ→ = @OBJ→ @-FOBJ→ ;

SET ←OBJ-OTHERS = ←OBJ OR (Gen) OR (Nom) OR (Ess) OR (Loc) OR (Adv) ;
SET OBJ→-OTHERS = OBJ→ OR (Gen) OR (Nom) OR (Ess) OR (Loc) OR (Adv) ;


LIST @X = @X ;

# Semantic tags
# -------------

#LIST Ani = Ani ;
LIST Fem = fem f ;
LIST Mal = mal m ;

LIST Obj = obj ;
LIST Org = org ;
LIST Plc = plc ;

LIST Sur = sur ;
#LIST Tit = Tit ;

# Other tags
# ----------

LIST ABBR = abbr ;
LIST ACR = acr ;
LIST CLB = sent cm ;

LIST QMARK = """ ; # ADD " FOR SYNTAX COLOURING.
LIST PPUNCT = punct guio quot ;
SET PUNCT = PPUNCT - QMARK ;


# Single-word sets
# ----------------
 
LIST COMMA = "," ;
LIST ¶ = ¶;

LIST OKTA = "akta" "okta";
LIST go = "go" ;
 

# Initials
# --------

LIST INITIAL = "adj" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m"
        "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"
        "á" "æ" "ø" "å" "ö" "ä" ;

LIST CAP-INITIAL = "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M"
        "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
        "Á" "Æ" "Ø" "Å" "Ö" "Ä" ;

# Tag sets
# ========
  SETS
# ========


# Word or not
# -----------
LIST WORD = n a adv vblex prn cnjsub cnjcoo post pr interj pcle num abbr acr  \? ;
 # any word

SET REALWORD = WORD - Num - Ord ;

SET REALWORD-NOTABBR = WORD - Num - Ord - ABBR ;

SET WORD-NOTDE = WORD - ("de") ; 

# Derivational affixes
# --------------------

LIST V-DER = der_adda der_alla der_asti der_d der_g der_h der_halla der_hudda der_huhtti der_huvva der_j der_l der_ahtti der_st der_stuvva der_goahti ;
 #Der_Pass ;

LIST N-DER = der_eaddji der_dimin der_eamoš der_eapmi der_heapmi der_n der_š der_muš der_upmi der_us der_vuohta actor ;
 # Actio ;

LIST A-DER = der_diibmosaš der_eaddji der_geahtes der_keahtes der_heapmi der_lágan der_laš der_meahttun (vblex* a);

LIST A-V = (vblex* a) ;

SET A-NOT-V = A - A-V ;

LIST Der1 = der1 ;
LIST Der2 = der2 ;
LIST Der3 = der3 ;

SET V-ACT = V - Der_Pass ;

# Case sets
# ---------

LIST ADVL = @ADVL @ADVL→ @ADVL← @←ADVL @→ADVL @-FADVL ;
LIST ADVLCASE = ill loc com ess ;

# Sg Nom - Sg Nom | Pl Nom - Pl Nom
# Sg Acc - Sg Acc | Pl Acc - Pl Acc
# Sg Gen - Sg Gen | Pl Gen - Pl Gen
# Sg Gen - Sg Ill | Pl Gen/Ill - Pl Ill 
# Sg Gen - Sg Loc | Pl Loc - Pl Loc
# Sg Com - Sg Com | Pl Gen/Com - Pl Com
# Ess - Ess

LIST CASE-HALFAGREEMENT = ill (sg loc) (pl com) ess ;
LIST CASE-AGREEMENT = nom acc gen (pl ill) loc com ess ;
LIST CASE = nom acc gen ill loc com ess ;

SET NOT-NOM = CASE - Nom ;
SET NOT-GEN = CASE - Gen ;
SET NOT-ACC = CASE - Acc ;
SET NOT-ACC-GEN = CASE - Acc - Gen ;

# Verb sets
# ---------

# Verbs and their complements
# - - - - - - - - - - - - - -

SET NOT-VERB = WORD - V ;

# Finiteness and mood
# - - - - - - - - - -

SET V-IND-FIN = Prs OR Prt ;
 # Problem: "In boahtán" is an invisible indicative

SET V-MOOD = Ind OR Pot OR Imprt OR ImprtII OR Cond OR Sup ;

LIST GC = ("gč") ;

SET VFIN = GC OR V-MOOD - ConNeg ;

SET VFIN-POS = V-MOOD - ConNeg - Neg ;

SET VFIN-NOT-IMP = VFIN - Imprt ;

SET VFIN-NOT-NEG = VFIN - Neg ;
  # this might be to strict, besides, "iige" can be written "ii ge"

SET NOT-PRFPRC = WORD - PrfPrc ;

# Person
# - - - - 

LIST V-SG1 = (vblex indic pres p1 sg)  (vblex indic pret p1 sg) (vblex cond pres p1 sg) 
             (vblex cond pret p1 sg) (vblex pot pres p1 sg) (vblex neg indic p1 sg);
 
LIST V-SG2 = (vblex indic pres p2 sg)  (vblex indic pret p2 sg) (vblex cond pres p2 sg) 
             (vblex cond pret p2 sg) (vblex pot pres p2 sg) (vblex neg indic p2 sg);
 
LIST V-SG3 = (vblex indic pres p3 sg)  (vblex indic pret p3 sg) (vblex cond pres p3 sg) 
             (vblex cond pret p3 sg) (vblex pot pres p3 sg) (vblex neg indic p3 sg);
 
LIST V-DU1 = (vblex indic pres p1 du)  (vblex indic pret p1 du) (vblex cond pres p1 du) 
     	     (vblex cond pret p1 du) (vblex pot pres p1 du) (vblex neg indic p1 du);
 
LIST V-DU2 = (vblex indic pres p2 du)  (vblex indic pret p2 du) (vblex cond pres p2 du) 
	         (vblex cond pret p2 du) (vblex pot pres p2 du) (vblex neg indic p2 du);
 
LIST V-DU3 = (vblex indic pres p3 du)  (vblex indic pret p3 du) (vblex cond pres p3 du) 
	         (vblex cond pret p3 du) (vblex pot pres p3 du) (vblex neg indic p3 du);
 
LIST V-PL1 = (vblex indic pres p1 pl)  (vblex indic pret p1 pl) (vblex cond pres p1 pl) 
             (vblex cond pret p1 pl) (vblex pot pres p1 pl) (vblex neg indic p1 pl);
 
LIST V-PL2 = (vblex indic pres p2 pl)  (vblex indic pret p2 pl) (vblex cond pres p2 pl) 
             (vblex cond pret p2 pl) (vblex pot pres p2 pl) (vblex neg indic p2 pl);
 
LIST V-PL3 = (vblex indic pres p3 pl)  (vblex indic pret p3 pl) (vblex cond pres p3 pl) 
             (vblex cond pret p3 pl) (vblex pot pres p3 pl) (vblex neg indic p3 pl);
 

 # Note that imperative verbs are not included in these sets!

# Some subsets of the VFIN sets
# - - - - - - - - - - - - - - -
SET V-SG = V-SG1 OR V-SG2 OR V-SG3 ;
SET V-DU = V-DU1 OR V-DU2 OR V-DU3 ;
SET V-PL = V-PL1 OR V-PL2 OR V-PL3 ;

SET V-DU-PL = V-DU1 OR V-DU2 OR V-DU3 OR V-PL1 OR V-PL2 OR V-PL3 ;

SET V-NOT-SG1 = VFIN-NOT-IMP - V-SG1 ;
SET V-NOT-SG2 = VFIN-NOT-IMP - V-SG2 ;
SET V-NOT-SG3 = VFIN-NOT-IMP - V-SG3 ;
SET V-NOT-DU1 = VFIN-NOT-IMP - V-DU1 ;
SET V-NOT-DU2 = VFIN-NOT-IMP - V-DU2 ;
SET V-NOT-DU3 = VFIN-NOT-IMP - V-DU3 ;
SET V-NOT-PL1 = VFIN-NOT-IMP - V-PL1 ;
SET V-NOT-PL2 = VFIN-NOT-IMP - V-PL2 ;
SET V-NOT-PL3 = VFIN-NOT-IMP - V-PL3 ;


SET V-1-2 = V-SG1 OR V-SG2 OR V-DU1 OR V-DU2 OR V-PL1 OR V-PL2 ;
SET V-3  = V-SG3 OR V-DU3 OR V-PL3 ;

# Sets consisting of forms of "leat" (these ones need to be rewritten)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
LIST LEAN = ("leat" vblex indic pres p1 sg) ("leat" vblex prfprc);
LIST LEAT = ("leat" vblex indic pres p1 pl) ("leat" vblex indic pres p3 pl) ("leat" vblex indic pres p2 sg) ("leat" vblex inf) ("leat" vblex indic pres conneg);

LIST LEAT-FIN-NOT-IMP = ("leat" vblex indic) ("leat" vblex cond) ("leat" vblex pot);
 
LIST VPRFPRC = (vblex prfprc) ;
LIST LEATPRFPRC = ("leat" prfprc) ;
SET PRC-NOT-LEAT = VPRFPRC - LEATPRFPRC ;
    # In order to distinguish between real leat-constructions and participles of other verbs
LIST HABEO-SG3 = ("leat" p3 sg) (vblex neg p3 sg) ("šaddat" p3 sg) ;

LIST HABEO-PL3 = ("leat" p3 pl) (vblex neg p3 pl) ("šaddat" p3 pl) ;

SET HABEO-3 = HABEO-SG3 OR HABEO-PL3 ;

# Pronoun sets
# ------------

LIST MUN = (prn pers p1 sg nom);
LIST DON = (prn pers p2 sg nom);
LIST SON = ("son" pron pers p3 sg nom);
LIST MOAI = (prn pers p1 du nom);
LIST DOAI = (prn pers p2 du nom);
LIST SOAI = (prn pers p3 du nom);
LIST MII-PERS = (prn pers p1 pl nom);
LIST DII = (prn pers p2 pl nom);
LIST SII = ("son" prn pers p3 pl nom);

SET PPRON-NOM-NOT-DAT = MUN OR DON OR SON OR MOAI OR DOAI OR SOAI OR MII-PERS OR DII OR SII ;

SET PPRON-NOT-DAT = (pron pers) - ("dat") ;

SET PPRON-DU-PL = MOAI OR DOAI OR SOAI OR MII-PERS OR DII OR SII ;
SET PPRON-PL = MII-PERS OR DII OR SII ;

SET PRON-DU = MOAI OR DOAI OR SOAI ;

SET PPRON-NOT-SII = MUN OR DON OR SON OR MOAI OR DOAI OR SOAI OR MII-PERS OR DII ;

LIST PPRON-GEN = (p1 sg gen) (p2 sg gen) (p3 sg gen) (p1 du gen) (p2 du gen) (p3 du gen) 
	(p1 pl gen) (p2 pl gen) (p3 pl gen);

SET PPRON-NOT-GEN = (pron pers) - PPRON-GEN ;

LIST DEM-SG = (prn dem sg nom);
LIST DEM-PL = (prn dem pl nom);
SET NOT-DEM = WORD - Dem ;

LIST SGPRON = (prn p1 sg) (prn p2 sg) (prn p3 sg) (prn sg) (prn px1sg) (prn px2sg) (prn px3sg);
LIST DUPRON = (prn p1 du) (prn p2 du) (prn p3 du)  (prn px1du) (prn px2du) (prn px3du);
LIST PLPRON = (prn p1 pl) (prn p2 pl) (prn p3 pl) (prn pl) (prn px1pl) (prn px2pl) (prn px3pl);
LIST DUPRON-NOTPX = (prn p1 du) (prn p2 du) (prn p3 du) ;

SET PRON-NOT-SG = DUPRON OR PLPRON ;

LIST DAT-PRON = ("dat") ("dát") ("diet") ("duot") ("dot") ;

LIST QUANT-PRON = "ollu" "olu" "unnán" "váháš" "veaháš" "veháš" ;
# This set is for choosing between Adv and Pron Indef.

# Adjectival sets and their complements
# -------------------------------------
SET LEX-A = A - A-DER ;

SET A-CASE = A - Attr - Adv ;

LIST A-CC = a cnjcoo ;

SET NOT-ADJ = WORD - A ;
SET NOT-ADJ-COMMA = WORD - A - COMMA ;
SET NOT-Attr = WORD - Attr ;
SET NOT-ADJ-PCLE = WORD - A - Pcle ;
SET NOT-ADJ-CC = WORD - A-CC ;

SET NOT-AA = WORD - A - Adv OR ("maid") ;

LIST NOMINAL-ADJ = "guoktilaš" "lámis" "oasálaš" ("suddu" der_laš) "viissis";
 
 # and many others
 
# Adverbial sets and their complements
# ------------------------------------
SET LEX-ADV = Adv - (A*) ;

SET NOT-ADV            = WORD - Adv;
SET NOT-ADV-N          = WORD - Adv - N;
SET NOT-ADV-PCLE       = WORD - Adv - Pcle ;
SET NOT-ADV-INDEF      = WORD - Adv - Indef ;
SET NOT-ADV-PCLE-ILL   = WORD - Adv - Pcle - Ill ;
SET NOT-ADV-PCLE-Refl  = WORD - Adv - Pcle - Refl ;
SET NOT-ADV-PCLE-INDEF = WORD - Adv - Pcle - Indef ;
SET NOT-ADV-PCLE-NEG   = WORD - Adv - Pcle - Neg ;
SET NOT-ADVL-PCLE-NEG  = WORD - @ADVL - @P← - Pcle - Neg ;


LIST MO-MANge = "goas" "gokko" "gos" "gosa" "govt" "makkár" "man" "manne" "mo" "mot" "mov" "movt" ("nugo" @CVP) (vblex qst);
 
SET MO = MO-MANge - ("man" foc_ge) ; 
 
 # Introduce finite clauses.
 
LIST PLACE-ADV =  "davá#bealde" "mátta#bealde" "nuortta#bealde" "oarje#bealde" "olggo#beale" ;
# There will usually be a Gen in front. 

LIST DOPPE = "badjin" "bajil" "dakko" "dá" "dákko" "dáppe" "diekko" "dieppe" "do" "dokko" "doppe" "duo" "duokko" "duoppe" "olgun" ;
# Adverbs with a locativic form, but don´t get Loc as a tag. 

LIST DOHKO = "bajás" "deike" "diehke" "diehko" "dohko" "duohko" "lulás" "olggos" "ruoktot" "sisa" "vuovdimassii" ;
# Adverbs with a illativic form, but they don´t get Ill as a tag. 

# Coordinators
# ------------
SET Foc = Foc_ge  OR Foc_gen  OR Foc_ges  OR Foc_gis  OR Foc_naj OR Foc_ba  OR Foc_be  OR Foc_hal  OR Foc_han  OR Foc_bat OR Foc_son ;

LIST NEGFOC = (neg foc_ge) ;

LIST XGO = "dego" "dugo" "nugo" "seammaládjego" "seammaláhkaigo" ;
  # Compounds
LIST SEAMMAX = "seamma#ládje" "seamma#láhkai" "seamma#láhkái" ;
  # Those combine with go
  
LIST MADE = "mađe" "mađi" ;
LIST DADE = "dađe" "dađi" ; 
  
SET CRD = COMMA OR CC OR NEGFOC OR XGO OR ("/") OR ("-") OR DADE ;
 
	# coordinators
	
LIST LCRD = @CNP ;
    # local coordinator
LIST GCRD = @CVP ;
    # global coordinator
    
SET CRD2 = (@CNP) OR COMMA OR NEGFOC OR XGO OR ("/") OR ("-") OR DADE ;
    # AFTER LCRD vs. GCRD disambiguation
    
# Sets for adverbs that have lookalikes
# -------------------------------------
 # Here come some adverbs that have identical twins in other POS. 
 # If these are found in Adv contexts, we treat them as adverbs.

LIST ADV-LACCAT = "absoluhtalaš" "agálaččat" "aitosaččat" ("aktiiva" der_laš) ("aktiivva" der_laš) "almmolaš" "analogalaš" "automáhtalaš" "álgoálgosaš" "álgovuolggalaš" "árbevirolaš" "beaivválaččat" "biologalaš" ("buhtten#riekti" der_laš) ("bustávva" der_laš) "čálalaččat" "čearddalaš" "dábálaš"  "duođalaččat" ("dutkan#politihkka" der_laš) "eahpedábálaš" "eahpeformálalaš" "eahpekritihkalaš" "eahpevirggálaš" "eaktodáhtolaččat" "ekologalaš" "ekologálaš" "ekonomálaš" "eksplisihtalaš" ("elektrovdna" der_laš) "eahpitkeahttá" ("etihkka" der_laš) "etymologalaš" "fágalaš" "fonehtalaš" "fonologalaš" "fonotávttalaš" "formálalaš" ("fysiologa" der_laš) "gaskamearálaš" "geavatlaččat" ("gealbu" der_laš) ("geografa" der_laš) ("geográfa" der_laš) ("giella" der_laš) ("girko#riekti" der_laš) "globálalaččat" ("gorri" der_laš) "govttolaš" "hálddahuslaš" "historjjálaš" "ideologalaš" "iešheanálaš" "implisihtalaččat" "jahkásaččat" "jeavddalaččat" ("jietnadat#oahppa" der_laš) ("juridihkka" der_laš) "konkrehtalaš" ("kritihkka" der_laš) "kronologalaš" ("kultur#historjá" der_laš) ("kultur#politihkka" der_laš) ("kultuvra" der_laš) "logihkalaš" ("luohtu" der_laš) ("máŋgga#fága" der_laš) "mekánalaš" ("metoda" der_laš) "moralalaš" "morálalaš" "morfologalaš" "našuvnnalaš" "negatiivalaš" "negatiivvalaš" "njálmmálaččat" "njuolgguslaččat" ("oaive#ášši" der_laš) "obbalaš" "obba#lohkái" "oktasaččat" "oktilaš" "ollislaččat" "oppalaččat" "optimalalaččat" "ovttabealálaš" "ovttajienalaš" "ovttamielalaš" "pedagogalaš" ("politihkka" der_laš) ("praktihkka" der_laš) ("prinsihppa" der_laš) ("priváhta#riekti" der_laš) "profehtalaš" "psykologalaš" "ráfálaččat" ("reála#politihkka" der_laš) ("riekte#historjá" der_laš) ("riekti" der_laš) "riikkaidgaskasaš" "sámegielalaš" ("riikka#goddi" der_laš) ("ruhta" der_laš) "rumašlaš" "sámepolitihkalaš" "sekundáralaččat" "semantihkalaš" ("servodat#ávki" der_laš) ("siviila#riekti" der_laš) "sosiálalaš" ("stáhta#politihkka" der_laš) "strategalaš" ("suorge#politihkka" der_laš) ("teknihkka" der_laš) "teorehtalaš" ("topografa" der_laš) ("váldo#ášši" der_laš) ("virgi" der_laš) ("vierru" der_laš) ;

LIST ADV-AFTER-NUM = "geardde" ;

LIST DUSSE = "áibbas" "dušše" "erenoamážit" "goitge" "man" "measta" "meastui" "oalle" "oba" "oktii#buot" "oppa" "sullii" ;

LIST EASKKA = "easkka" ; 

LIST ADV-NOT-ARG = "aiddo" "ain" "aivve" "albma" "aŋkke" "álggos" "bái#fáhkka" "beanta" "beare" "dušše" ;

#LIST ADV-NOT-ARG2 = "aiddo" "ain" "aivve" "albma" "aŋkke" "álggos" "álgo#báliid" "álo" "bái#fáhkka" "beanta" "beare" "dakka#viđe" "dal" "dan_dihte" "danne" "dasto" "dattetge" ("dábálaš" Adv) "dávjá" "de" "dieđinge" "dieđusge" "duođaid" "easkka" "fal" "fargga" "fas" "fárrolaga" "gal" "goas" "goasse" "gos" "gosa" "gostege" "govt" "gusto" "hedi" "juo" "justa" "loahpas" "maiddái"  "manin" "manne" "nuppes" "suige" "šat" "vel" "viimmat" "vuos" ;

LIST ADV-NOT-VERB = "dušše" "viimmat" ;

LIST ADV-NOT-NOUN = "easka" "várra" ;

LIST ADV-NOT-NAMES = "Ain" "Anne" "Diego" "Dieppe" "Enge" "Galle" "Haga"
           "Joba" "Johan" "Liikka" "Mai" "Mannes" "Mo" "Mot" "Naba"
           "Nan" "Oktan" "Sierra" "Sokka" "Villa" ;

SET ADV-NOT-OTHER-POS = ADV-NOT-VERB OR ADV-NOT-NOUN OR ADV-NOT-NAMES ;

# Sets of elements with common syntactic behaviour
# ================================================

SETS

# Verbs
# -----
# Hmm V*?
SET VERB = V - (V N);
  # V is all readings with a V tag in them, VERB should
            # be the ones without an N tag following the V  
SET VERB-NOT-ACTIO = V - (V N) - Actio ;
            
SET LEX-V = VERB - V-DER;
       # VERB but not V-DER
 
 # The set REALCOPULAS is smaller than COPULAS, made for verbs with PrfPrc complements: Seammás REALCOPULAS son dovdan iežas...
LIST REALCOPULAS = "dáidit" "leahkit" "leat" "soaitit" "veadjit" ;

# The set COPULAS is for predicative constructions
LIST COPULAS = "dáidit" "gártat" "leahkit" "leat" "orrut" "soaitit" "šaddat" "veadjit" ;
 #  "bissut" ?
 # 'Dáidit' can appear without 'leat'.

SET V-NOT-COP = V - COPULAS ;

LIST MOD-ASP = "bállet" "berret" "dáidit" "fertet" "galgat" "gillet" "lávet"  "sáhttit" "seahtit" "soaitit" "viggat" ;

 # Verbs that never have arguments of their own - so we leave out "áigut", for ex.

LIST AUX-OR-MAIN = "áigut" "álgit" "beassat" "galgat" "hálidit" "háliidit" "máhttit" "nagodit" "ollit" "orrut" "sihtat" "veadjit";

 # These verbs can take arguments, so they do not belong in the AUX group, 
 # but they are nevertheless mapped to (@+FAUXV). 
 # Added "álgit" to the group (Lene) - Made rules for "boahtit" which  sometimes can be AUX
 # Magga (1982: 120): áigut, dáidit, deaivat, fertet, galgat, lávet, máhttit, oažžut, sáhttit, soaitit, veadjit - in some of the meanings 
 # Halvhjelpeverb: álgit, berret, dohkket, gártat, heivet, liigut, šaddat - in some of the meanings 
 
SET AUX = COPULAS OR Neg OR MOD-ASP OR AUX-OR-MAIN ;
 

SET V-NOT-AUX = V - AUX ;
 # The set of verbs that cannot be auxiliaries. 
			  # Does not include AUX-OR-MAIN.
SET VFIN-NOT-AUX = VFIN - AUX ;

SET V-MAIN = V - COPULAS - Neg - MOD-ASP OR ("orrut") ;
 
# The set of verbs that can be  main verbs. Includes AUX-OR-MAIN.
SET V-DER-PASS = V OR V-DER OR Der_Pass;
  # OR is intersection, this should work
				   # The set is used in one rule with no hits.
LIST V-TRANS = tv (iv der_ahtti) (iv der_h) ;
# This is only a tool for making the following sets, bacause of that the symbols (|) and (-) in the set don´t function as one had expected.
SET V-TRANS-ACT = V-TRANS - (TV Der_Pass) ;
 #XXX Never acc-obj for a.l. or actor?
 # All active verbs with a TV tag, including AUX-OR-MAIN.
 
SET V-TRANS-ACT-NOT-AUX = V-TRANS - Der_Pass - AUX ;

SET V-TRANS-ACT-NOT-ACT = V-TRANS - Der_Pass - Der_n - Actio - Actor - PrsPrc - Attr OR (TV Actio Ess) ;

SET V-TRANS-ACT-NOT-ACT-NOT-AUX = V-TRANS - Der_Pass - Der_n - Actio - Actor - AUX OR (Actio Ess) ;


# Sets for verbs choosing oblique objects or adverbials
# - - - - - - - - - - - - - - - - - - - - - - - - - - - 

# This is the list of strictly transitive verbs. In the rules, refer not to STVLIST, but to the set STV defined below.
LIST STVLIST = (iv der_ahtti) (iv der_h) "addit" "amašit" "atnit" "ánssášit" "árvalit" "árvidit" "árvvoštallat" "ásahit" "ávžžuhit" "bajidit" "bearrat" "biebmat" "bidjat" "bilidit" "billistit" "bissehit" "bisuhit" "boaldit" "boktit" "buhtadit" "buktit" "buoridit" "caggat" "coggalit" "cealkit" "cegget" "čađahit" "čielggadit" "čoaggit" "čoavdit" "čohkket" "čuoččuhit" "čuohppat" "čuovvulit" "čuovvut" "dadjat" "dagahit" "dahkat" "dáhkidit" "dáhttut" "dárbbahit" "dárbbašit" "dárkkistit" "dávistit" "deaivat" "deattuhit" "deavdit" "diehtit" "diktit" "doahttalit" "doaimmahit" "doalahit" "doallat" "doarjut" "dohkkehit" "dovdat" "dovddahit" "duođaštit" "eahpidit" "eaiggáduššat" "eaktudit" "ealáskahttit" "eavttuhit" "evttohit" "fállat" "fidnet" "fievrridit" "fuolahit" "fuomášit" "garvit" "gaskkustit" "gádjut" "gáhttet" "gáibidit" "gáržžidit" "gávdnat" ("gávnnadit" p1 sg) ("gávnnadit" p2 sg) ("gávnnadit" p3 sg) "geahčadit" "geahččat" "geassit" "geatnegahttit" "geavahit" "gieđahallat" "giddet" "goddit" "gohččut" "gohčodit" "gokčat" "gozihit" "guoddalit" "guođđit" "guođohit" "guorahallat" "guorrat" "guoskkahit" "hábmet" "háhkat" "hálddašit" "heaittihit" "heivehit" "hilgut" "ipmirdit" "jođihit" "juksat" "juohkit" "juolludit" "kártet" "lágidit" "láhčit" "láigohit" "loahpahit" "lohkat" "lohpidit" "loktet" "luoikat" "luoikkahit" "luoitit" "massit" "mearkkašit" "mielddis#buktit" "movttiidahttit" "muddet" "muitalit" "muittuhit" "namahit" "nammadit" "namuhit" "nannet" "nanosmahttit" "nuppástuhttit" "oaidnit" "oastit" "oaivvildit" "oamastit" "oažžut" "ođasmahttit" "ođastit" "ollašuhttit" "organiseret" "ovdan#buktit" "ovdánahttit" "ovddastit" "ovddidit" "prioriteret" "ráddjet" "ráđđet" "ráfáidahttit" "ráfáiduhttit" "ráhkadit" "rávvet" "rievdadit" "rihkkut" "sáddet" "seaguhit" "seailluhit" "sihkkarastit" "sihtat" "siskkildit" "sisttis#doallat" "suodjalit" "suovvat" "unnidit" "vahágahttit" "váillahit" "váldit" "válljet" "várret" "vásihit" "váttásmahttit" "viiddidit" "vuhtii#váldit" "vuođđudit" "vuohttit" "vuojuhit" "vuoruhit" "vuosttaldit" "vuovdit" ;

	# Strictly transitiv-verbs - a start. This set is ment as a help choosing Acc or Gen. Example: "Mun borren eatni kafeás." - there is Gen, no Acc, even if the verb is transitive. That´s why "borrat" is not in this set.
	# These verbs: "addit", "fidnet" and "oažžut" can, when it´s about sex, be without object: "Son oaččui gonagasa bártnis." 

SET STV = STVLIST - Der_Pass ;

	
SET STV-NOT-ACT = STV - (Actio Nom) - (Actio Gen) - (Actio Acc) - (Actio Loc) - (Actio Ill) - (Actio  Com) - Actor ;
	

LIST LOCV = "ávkkástallat" "ballat" "beassat" "beroštit" "biehttalit" "bihtit" "ceavzit" "dinet" "dolkat" "eastadallat" "eastadit" "fuolahit" "fuollat" "geargat" "heaitit" "ilbmat" "jearrat" "luohpat" "máinnašit" "nohkkot" "oassálastit" "spiehkastit" "váruhit" "vástidit" ;

		#Note that "fuolahit" obviously has two homonymous variants: 
		#fuolahit1+Acc, fuolahit2+Loc

LIST COMV = "árvalit" "árvvohuššat" "ávkašuvvat" "bálddalastit" "bártašuvvat" "birgehallat" "birget" "buohtastahttit" "deaivvadit" "gulahallat" "gulaskuddat" "hilbošit" "joatkit" "leaikkastallat" "lohpádaddat" "lohpádallat" "lonuhit" "meannudit" "malssidit" "molssodit" "ovttas#bargat" "ovttastahttit" "riidalit" "servvoštallat" "servvoštaddat" "soabadit" "soahpat" "šiehtadallat" "šiehtadit" ;
 
		#Note that "leaikkástallat" has two homonymous variants:
		#leaikkástallat1 (IV), leaikkástallat2+Com

LIST ILLV = "áibbašit" "álgit" "ásaiduvvat" "báitit" "beassat" "čohkkedit" "čujuhit" "čuohcit" "deaivat" "doaškut" "dorvvastit" "došket" "duhtat" "geahččat" "gullat" "guoskat" "gustot" "hárjánit" "heivet" "irggástallat" "jáhkkit" "liikot" "luohttit" "mannat" "máhccat" "mieđihit" "oahpásmuvvat" "oahpásnuvvat" "ollet" "oskut" "riepmat" "ráhkkanit" "soahpat" "searvat" "suhttat" "vástidit" "vuolgit";
 		

LIST TRANSLV = "jápmit" "duššat" "hávkat" "náitalit" "gaskkalduvvat" "nohkat" "goarránit" "heahpanit" "boakčánit" "šlundut" "ráigánit" "vuollánit" "gopmánit" "fuotnánit" "roahppánit" "reakčanit" "bieđganit" "luoddanit" "guvggodit" "liegganit" "suorganit" "báhkkanit" "cuovkanit" "hedjonit" "lohppet" "goikat" "galbmot" "goallut" "ruostut" "buoidut" "guvggodit" "suvrut" "suddat" ;

  # Taken from Helander (2001) p. 89, might be useful in the future as those verbs typically take humans and places in illative case.
  
LIST REKSV = "áibbašit" "deaivat" "dorvvastit" "duhtat" "gustot" "hárjánit" "jáhkkit" "liikot" "mieđihit" "ollet" "ráhkkanit" "soahpat" "searvat" "vuolgit" "beroštit" "biehttalit" "bihtit" "ceavzit" "dinet" "dolkat" "eastadallat" "eastadit" "fuolahit" "fuollat" "geargat" "heaitit" "luohpat" "oassálastit" "váruhit" ;
# This set is for giving infitives @ADVL after the verb.  

LIST ACC-LOCV = "biehttalit" "earuhit" "gieldit" "jearrat" ;

LIST ACC-ILLV = "addit" "bidjat" "mearkkašit";
    # Two-place predicates that take a direct object and an illative adverbial.

LIST MIELDE-V = "addit" "bidjat" "dáidit" "leat" "oastit" "oažžut" "váldit" ;
    # Verbs that take mielde as their complement.

# Son attii girjji mielde.

LIST TIMEADVERBIAL-V = "ádjánit" "ássat" "bargat" "bistit" "bivdit" "eallit" "fievrridit" "guohtut" "joatkit" "láddet" "oahpahit" "ođasmahttit" ;
 
    # Do not take members of the time set as an object
    
LIST TIMEOBJECT-V = "addit" "atnit" "árvalit" "bálvalit"  "čuovvut" "deavdit" "diŋgot" "evttohit" "fátmmastit" "gáibidit" "gávdnat" "geavahit" "gierdat" "guhkidit" "hábmet" "jorgalit" "juolludit" "lasihit" "liigudit" "loahpahit" "loaktit" "markeret" "mearridit" "molsut" "oanidit" "oažžut" "soahpat" "šiehttat" "várret" "viiddidit" ;

    # might take time as an object
    
LIST DURATION-V = "ádjánit" "ássat" "bistit" "orrut" ;

LIST POINT-IN-TIME-V = "árrit" "bissehit" "caggat" "cakkadit" "cakkastallat" "doalahit" "doallat" "duostut" "dustet" "eastadit" "gieldit" "goahcat" "heađuštit" "hehttet" ;

LIST ROUTEADVERBIAL-V = "boahtit" "čuoigat" ;
 
    # bevegelse langsmed noe, innafor et bestemt område   
LIST ROUTEOBJECT-V = "ásahit" "bidjat" "botnjat" "basuhit" "buoridit" "čielggadit" "čuovvulit" "čilget" "čuorvut" "čurvet" "dieđihit" "duođaštit" "duorggastit" "geavahit" "geahpedit" "geahpidit" "gudnejahttit" "guorahallat" "gieđahallat" "guođđit" "gilljut" "heahtit" "huikit" "huikkádit" "juoigat" "lávlut" "lohkat" "loahpahit" "mearridit" "máidnut" "nannet" "njulget" "oahpahit" "ráhkadit" "sivdnidit" "suokkardit" "unnidit" "válmmaštit" "vurket" ;

LIST HAB-VERB = "boahtit" "leat" "goallut" "heaŋgát" "jápmit" ;
	# To be used in habitative-sentences.

# Valency sets
# - - - - - - -

LIST INFV = "astat" "ádjánit" "áigut" "álgit" "ásahit" "bágget" "bávččagit" "beassat" "berret" "bivdit" "bivvat" "bistit" "boahtit" "bovdet" "čohkkát" "čohkkedit" "čohkkánit" "čuoččahit" "čuoččastit" "čuorvut" "čurggodit" ("dadjat" der_passl) ("dadjat" der_passs) "dagahit" "dáhttut" "dáidit" "dárbbašit" "defineret" "diktit" "doaivut" "doapmat" "duostat" "fertet" "fuobmát" "fuolahit" "galgat" "gáibidit" "gárrut" "gártat" "geahččalit" "geargat" "geatnegahttit" "gierdat" "gillet" "gohččut" "háhppehit" "hálidit" "háliidit" "hárjánit" "heivet" "lávet" "mannat" "máhttit" "máššat" "movttiidahttit" "muitit" "nagodit" "navdit" "oahpahit" "oahppat" "oažžut" "ollet" "ribahit" "riepmat" "sáhttit" "seahtit" "sihtat" "soaitit" "suovvat" "šaddat" "stađđat" "veadjit" "viggat" "viššat" "vuogáiduvvat" "vuolgit" "vuollánit" "vuordit";
 

LIST ACC-INFV = "bivdit" "čuorvut" "dagahit" "diktit" "gohččut" "movttiidahttit" "sihtat" "suovvat" ;

 # These are verbs taking accusative objects and infinitives at the same time;
 
 # a subset of INFV.
	## Ii suova nieiddas náitalit.

LIST OPREDV = "atnit" "dadjat" "dahkat" "dulkot" "geavahit" "geahččat" "gohčodit" "gohččut" "meroštallat" "navdit" "váldit" "válljet";

 # Verbs that occur with objects that have secondary predicates.
 
LIST OKTII-V = ("boallu" der_huvva) "goallostuvvot" "beaškkehat" "bidjat" "čatnat" "suddat" "heivet" "bidjat" "časkit" "geassit" "gullat" "rehkenastit" "ordnet" "soahpat" "gávnnadit" "heivehit" "doaibmat" "iskat" "laktit" "seaguhit";

 # Danger: This list could be too long, in certain respects. 
 # TODO: Think of counter examples, i.e. sentences where we have these verbs, but where oktii is not an adverbial.
 
LIST VGENV = "bassit" "bivdit" "boahtit" "čierrut" "čuoigat" "čuoiggadit" "čuovvut" "fárret" "fitnat" "garrudit" "gálašit" "gállit" "gilljut" "girdit" "johtit" "jorgut" "luoibmat" "mannat" "mátkkoštit" "njahkalit" "njoammut" "riidet" "ruohttat" "sihkkelastit" "soabbut" "šloahtat" "váccašit" "vádjolit" "vájaldit" "vájuldit" "vánddardit" "vázzit" "viehkat" "viežžat" "vuodjat" "vuodjit" "vuojadit" "vuojašit" "vuolgit" "čilget" "čuorvut" "čurvet" "dadjat" "dárostit" "sámástit" "suomastit" "digáštallat" "hállat" "hoallat" "huikit" "hupmat" "juoigat" "lávlut" "logaldallat" "máidnut" "máinnašit" "muitalit" "savkalit" "skierbmut" "vástidit" "njurgut" "veahkehit" "vuoitit" "vuoššat" ;

 
LIST SOURCE-V = "gáibidit" ;

# verbs that need a human locative argument as source. XXX Oahppit sáhttet skuvllas gáibidit eanet veahki. Perhaps ACTOR would be better?
 
# Lexical valency sets
# - - - - - - - - - - -

# Conceptual Hierarchy
# ====================
# minor caps : structure elements not sets
# caps : sets
# 
#                                                verbal content
#                                   /                                        \                 
#                                 /                                            \    
#                         DYNAMIC-V                                          STATIC-V
#                         /                  \                                /               \
#                 human activity              events                  concrete/human         abstract
#             /               \               /           \               /                 /         
# concrete activity*   abstract activity    ABSTR-EVENT-V EVENT-V        PLACE-V      ABSTR-PLACE-V
#                     /               \
#             HUMAN-AGENT-V    ABSTR-ENTITY-COM-V
# 
# ================================================================================================================================= 
# 
#                                                        concrete activity*
#                                         /                   \                           \
#                        physical activity                     VERBAL-ACTIVITY-V       INTELLECTUAL-ACTIVITY-V
#                     /                       \
# movement (MOVEMENT-VERB)                       other
# 
#                                 /           /           \           \               \
#                     HUMAN-SOURCE-VEHICLE-V  REM-WITH-PARTS ACTIVITY-V BODY-ACTIVITY-V WRITING-ACTIVITY-V ....
#                     /           \
#             VEHICLE-PLACE-V VEHICLE-TOOL-V 
# 
# others:
# HUNTING-ACTIVITY-V; KITCHEN-ACTIVITY-V; WORKING-ACTIVITY-V; WRITING-ACTIVITY-V; HANDICRAFT-ACTIVITY-V; ONLY-PLACE-LOC-V ; HUMAN-LOC-V
# 
# =================================================================================================================================

    #  Verbs according to loc/com preferance
    #  - - - - - - - - - - - - - - - - - - - 
# The idea is that the superset DYNAMIC-V does not select (Pl Loc) if the noun is a member of the set TOOL, ABSTR-TOOL or CONCEPT. This is the "minste felles multiplum". The sub-sets are different, e.g. many of them (but not all) are not connected to HUMAN in (Pl Loc), one is not connected to ABSTR-ENTITY and ACTOR in (Pl Loc). We work with negation so the rules don´t destroy analysis because of insufficent sets.

     
LIST MOVEMENT-V = "ádjit" "beassat" "boahtit" "čuoigat" "čuoiggadit" "čuovvut" "fárret" "finadit" "finihit" "fitnat" "gálašit" "gállit" "girdit" "johtit" "mannat" "mátkkoštit" "njoammut" "ollit" "riidet" "ruohttat" "sáhtostit" "sihkkelastit" "suobbulit" "soabbut" "šloahtat" "váccašit" "vádjolit" "vájaldit" "vájuldit" "vánddardit" "vázzit" "viehkalit" "viehkat" "viežžat" "vuodjalit" "vuodjat" "vuodjit" "vuojadit" "vuojašit" "vuolgit" ;

 # These verbs typically combine with place adverbials in the genitive case @ADVL
 # (i.e. not accusative) I am not sure if the verbs in the second line do that too. They denote movement anyway.
 # These verbs take GEOGRAPHICAL-PLACE in Acc @OBJ.
  
LIST HUMAN-ACTIVITY-V = "bassit" "bealuštit" "beaskidit" "beastit" "bivdit" "boaldit" "botket" "buktit" "buvttadit" "časkit" "čatnat" "čájehit" "čállit" "čoaggit" "čoavdit" "čugget" "čuohppat" "dearvvahit" "deavdit" "devdnet" "dikšut" "divvut" "doarrádallat" "doidit" "dubmet" "duddjot" "duvdilit" "ferdnet" "gáhkket" "gárvodit" "gásttašit" "gávkat" "geahččat" "gilvit" "goarrut" "goddit" "gođđit" "gohččut" "goikadit" "goivet" "gokčat" "gottihit" "guldalit" "guolástit" "hábmet" "hervet" "hoigat" "hoitát" "hukset" "huškut" "juhkat" "juksat" "juogadit" "juohkit" "láibut" "láktadit" "loaiddastit" "luddet" "merket" "mihtidit" "murret" "nannet" "náitalit" "njuoskadit" "oahpahit" "ohcat" "rahpat" "ráhkadit" "ráidnet" "rátkit" "registreret" "rekruteret" "ruohkkat" "sáddet" "sáltet" "sárgut" "sihkkut" "skihtardit" "skoalkalit" "tevdnet" "vadjat" "veahkehit" "vikšet" "vuođđudit" "vuosehit" "vuoidat" "vuoiddadit" "vuoitit" "vuostái#váldit" "vuoššat" "vurket" ;

  # in contrast to abstract "activities" and static verbs. 
  # According to the rules choosing Loc or Com, all activity-verbs do not select TOOL, ABSTR-TOOL, CONCEPT or HUMAN in (Pl Loc).
  
LIST BODY-ACTIVITY-V = "borrat" "čiekčat" "čujuhit" "čuorbmat" "gullat" "guoskkahit" "lihkahit" "lihkastahttit" "njávkkadit" "njávkkastit" "oaidnit" "seavvit" ;
  
    # These verbs can also have BODY as a tool. The verb-set belongs to the superset of dynamic-verbs, so they will also work with TOOL and ABSTR-TOOL in Com. "Giehta" is in both the TOOL-set and the BODY-set because it selects in Com to a lot of verbs.

LIST PLACING-ACTIVITY-V =  "bidjat" "buonjostit" ;

#LIST HUNTING-ACTIVITY-V = "bivdit" "goddit" "luossa-#bivdit";

#LIST FOOD-ACTIVITY-V = "ferdnet" ;

#LIST WORKING-ACTIVITY-V = ;

LIST WRITING-ACTIVITY-V = "čállit" ;

LIST HANDICRAFT-ACTIVITY-V = "buddet" "botnit" "goarrut" "hervet" "vadjat" "vikšet" ;

SET ACTIVITY-V = BODY-ACTIVITY-V OR WRITING-ACTIVITY-V OR PLACING-ACTIVITY-V OR HUMAN-ACTIVITY-V OR HANDICRAFT-ACTIVITY-V ;

#LIST DADJAT = "dadjat" "lohkat" ;
# This set is for  cealkkavástta: DADJAT + Acc + Inf - Not in use for the time being

LIST VERBAL-ACTIVITY-V = "basuhit" "cealkit" "cuoigut" "čilget" "čuorvut" "čurvet" "dadjat" "dáikit" "dárostit" "digáštallat" "digaštit" "duoldat" "gielistit" "gilljut" "gopmulit" "háladit" "háleštit" "hállat" "hoallat" "huikit" "huikkádit" "humadit" "hupmat" "jearrat" "juoigat" "kommenteret" "lávlut" "logaldallat" "lohkat" "máidnut" "máinnašit" "muitalit" "muitaladdat" "njurgut" "oaivvildit" "savkalit" "ságastaddat" "ságastallat" "ságastit" "sámástit" "sámistit" "sárdnidit" "sárdnut" "sártnodit" "sivdnidit" "solžat" "suomastit" "váruhit" "vástidit" ;

#Under construction! (as most of the other LISTs) 
    # According to the rules choosing Loc or Com, the these verbs select TOOL, ABSTR-TOOL, CONCEPT or HUMAN in (Pl Loc).
    # SATNI in Com

LIST HUMAN-AGENT-V = "áŋgiruššat" "ásahit" "beahttit" "buoridit" "čielggadit" "čuovvulit" "dássidit" "deattuhit" "dieđihit" "dievvat" "duođaštit" "geahpedit" "geahpidit" "gudnejahttit" "guorahallat" "illudit" "lassánit" "liekkadallat" "loahpahit" "luohpat" "mearridit" "moivašuhttit" "nannet" "oassálastit" "suokkardit" "unnidit" "váikkuhit" "válmmaštit" "verrošit" "vurket" ;

    # According to the rules choosing Loc or Com, the these verbs do not select TOOL, ABSTR-TOOL, CONCEPT, SATNI or HUMAN in (Pl Loc).

#LIST ABSTR-EVENT-V = "lassánit" ;

    # In contrast to the HUMAN-AGENT-V set, this one presupposes no human or human-like actor who initiates the action.

LIST INTELLECTUAL-ACTIVITY-V = "dovdat" "fuobmát" "fuomášit" "huobmát" "jurddahit" "jurddašit" "smiehttat" ;

    # According to the rules choosing Loc or Com, the these verbs do not select TOOL, ABSTR-TOOL, CONCEPT or HUMAN in (Pl Loc).
    
LIST PSYCH-V = "ballat" "dolkat" "heahpanit" "illudit" "suhttat" "suorganit" ;

LIST VEHICLE-PLACE-V = "addit" "bearrat" "gaikkihit" "gáibidit" "geiget" "oastit" "oažžut" "suoladit" "váldit"  ;

    # According to the rules choosing Loc or Com, these verbs do not select TOOL, ABSTR-TOOL and CONCEPT in (Pl Loc), but HUMAN or ACTOR in (Pl Loc).
    # HUMAN is source and locative, VEHICLE is locative

LIST VEHICLE-TOOL-V = "buktit" "doalvut" "fievrridit" "vuolggahit" ;

    # HUMAN is source and locative, VEHICLE is comitative

SET HUMAN-SOURCE-VEHICLE-V = VEHICLE-PLACE-V OR VEHICLE-TOOL-V ;

#SET HUMAN-SOURCE-V =
# agentive verbs with humans as their agents

    # The two subsets differ in their choice of case for members of VEHICLE, but both choose locative for members of the set HUMAN (with the thematic role source)

LIST ABSTR-ENTITY-COM-V = "investeret" "lihkosmuvvat" "lihkosnuvvat" "lihkostuvvat" "lihkustuvvat" "ruhtadit";

    # According to the rules choosing Loc or Com, these verbs do not select TOOL, ABSTR-TOOL, CONCEPT, ABSTR-ENTITY and ACTOR in (Pl Loc).

LIST ONLY-PLACE-LOC-V = "áimmahuššat" "álggahit" "bártidit" "bargat" "dahkat" "veahkehit" ;

    # According to the rules choosing Loc or Com, these verbs only select (Pl Loc) if PLACE or ORGANIZATION.

LIST HUMAN-LOC-V = "atnit" "báhcit" "geavahit" "gohčodit" "namuhit" ;

    # According to the rules choosing Loc or Com, these verbs choose only (Sg Com) if CONCEPT or HUMAN or "sátni".
    # Abstract

LIST PLACE-V = "buolvvastallat" "buolvvastit" "čippostallat" "čohkkát" "čohkahit" "čuožžut" "čuččodit" "morihit" "gohččát" "gullát" "morránit" "orrut" "orodit" "stuorrut" "veallát" "veallahit" ;

  # Those get only not locative if the target is a member TOOL, ABSTR-TOOL or ANIMATE or CONCEPT. Selects more locatives than ONLY-PLACE-LOC-V 
  
LIST ABSTR-PLACE-V = "váilut" "heivet" "hevvet" "hiehpat" "sistisdoallat" "soahpat" "šiehtat";
    # Verbs without agent

LIST EVENT-V = "dáhpáhuvvat" ;

  # TIME/AIGODAT are locative
  
LIST STATE-V = "eallit" ;

  
LIST REM-WITH-PARTS = "gaikkihit" ;

    # Belongs to the DYNAMIC-V. They also take PARTS in comitative case. 
    
LIST CONTRAST-V = "rátkit" ;

    # two arguments, the second of which is locative

  
LIST EMOTION-V = "heahpanaddat" "heahpanit" "ráhkistit" ;

#LIST PERCEPTION-V = 
LIST SENSATION-V = "gullat" "oaidnit" ;

LIST ILLNESS-V = "buohcat" "dearvvašmahttit" "dearvvašmuvvat" "dearvvašnuvvat" "dearvvaštuvvat" ;

  
# HIERARCHY:

#SET STATIC-V = PLACE-V OR EMOTION-V OR SENSATION-V ;

SET DYNAMIC-V = ACTIVITY-V OR MOVEMENT-V OR VERBAL-ACTIVITY-V OR HUMAN-AGENT-V OR INTELLECTUAL-ACTIVITY-V OR ABSTR-ENTITY-COM-V OR HUMAN-SOURCE-VEHICLE-V OR REM-WITH-PARTS ;

    # According to the rules choosing Loc or Com, dynamic-verbs do not select TOOL, ABSTR-TOOL or CONCEPT in (Pl Loc).
    # Human becomes either Loc or Com depending on its subset membership.
    
SET N-TIMEOBJECT-V = MOVEMENT-V OR ACTIVITY-V OR VERBAL-ACTIVITY-V OR INTELLECTUAL-ACTIVITY-V OR PLACE-V ;

    # Those verb sets in addition to TIMEADVERBIAL-V do not take TIME expressions as objects

# Adverbs
# -------

# Adverbs as predicates
# - - - - - - - - - - -
    # in combination with verbs

LIST COM-ADV = "fárrolaga" "oktan" "oktanaga" "ovtta#mielas" "ovttas" "ovttas#ráđiid" "searválagaid" "searválaga" "searvál" "searvála" ;

    # Could also be perceived as particles within complexs verbs.
    
# others: vuhti combines with váldit - Com

# Other adverb sets
# - - - - - - - - - 

LIST GRADE-ADV =  "áibbas" "beare" ("eanet" adv) "erenoamán" "erenoamáš" "earenoamáš" "hirbmat" "hui" "ila" "issoras" ("man" adv) "menddo" "nu" "oalle" "oba" ("oppa" adv) "seamma" "seammá" ("veaháš" adv) "vehá" "veháš" "veahá" "veaháš" ;

LIST PLURALIZER = "buot" "buotlágan" "buotlágán" "buotlágáš" "earálágan" "iežálágan" "iežálágán" "gait" "gaitlágan" "gaitlágán" "goappeš" "goappašat"  "máŋggalágan" "máŋggalágán" "moattelágan" "moattelágán" "moattilágan" "moattilágán" ;
    # Singular nouns can have a plural form combined with those
  

# Adjectives
# ----------

# Lexical valency sets
# - - - - - - - - - - -
    # here we have adjectives according to their semantic properties
    # in periphrastic constructions (together with "leat") they subcategorize for comitative, locative etc. depending on the noun's semantic properties
    
LIST COM-ADJ = "olles" "oppa" ;

LIST ILL-ADJ = "gullevaš" ;

LIST ACTIVITY-ADJ = "hilbat" "oskkáldas" ;

    # denote som kind of activity, might take HUMAN comitative?
    
LIST EMOTION-ADJ = "suohtas" ;
	# When Attr = pred.form
	## Lea suohtas kurssas. - not Attr 
	## Lea čuovvovaš kurssas. - Attr

#LIST ATTITUDE-ADJ = 

#LIST ATTRIBUTE-ADJ = "čeahppi" ;

# Nickel: predicative adjectives (take a complement) "fargat" "heavnnas" "sáiggas" "suhtas"

# Other adjective sets
# - - - - - - - - - - -
    # In order to disambiguate between N and A
    # Those are nouns/adjectives with zero derivation
    
LIST DER-ADJ-N = "addi" "lávlu" "lohkki" "ovddasteaddji" "ráđđejeaddji" "sadjásaš" "vázzi" "vuoddji" "vuoiti" "vuovdi";

LIST ADJ-N = "buoidi" "čeahppi" "headju" "heittot" "jalla" "neavri" "nuorra" "oahpis" "oarbbis" "ráhkis" "rikkis" "váivváš" "vuoras";
    
    # nouns that have very specific semantics and are derived from adjectives
    # those nouns are animate
    
LIST ADJ-N-CASE = "varas" ;
    # adjectives which are also nouns in other cases than nominative 

LIST NON-GRADE-ADJ = "sápmelaš" "alternatiiva" ;
    # gradable under certain circumstances, for example if we write "nu" "hirbmat" "hui" "oalle" "oppa" "veháš" 
    ## mon dagahallan NU sápmelažžan = jeg later som jeg er SÅÅ same/samisk?
    ## mon anán du VIEHKA sápmelažžan 
    
LIST GRADE-ADJ = "fávru" "headju";
    # The ones that have a strong adjective meaning, and are inclined to be adjectives rather than nouns in Ess constructions

LIST LEX-ADJ = "bassi" "guovddáš" "nuorra" "oahpis" "váivi" "oainnus";
    # Those are quite strongly lexicalized as nouns.
    
LIST TIME-A = "boahtte" "čuovvovaš" "maŋemus" "maŋimus" "ovddit" "mannan" "vássán"   ;

LIST DURATION-A = "heila" "eanas" "eanet" "geažo" "geažos" "guhkki" "obba" "oba" "ollis" "oppa" "visot" ;

LIST DURATION-ADV = "meastui" "measta" "masá" "varga" "vargui" "vargahui" "goasii" "goase" ;
    
LIST POINT-IN-TIME-SPEC = "dološ" "eará" "nubbi" ;

    

# NP sets defined according to their morphosyntactic features
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

LIST N-SG-NOM = (n sg nom) OR (np sg nom);
LIST N-PL-NOM = (n pl nom) OR (np pl nom);

SET LEX-N = N - N-DER;

LIST PROP = np;

SET CNOUN = N - Prop;

SET HNOUN = N - Cmpnd ;

LIST N-NOM = (n nom) (np nom);
SET HNOUN-NOM = N-NOM - Cmpnd ;

LIST N-GEN = (n gen) (np gen);
SET N-NOT-GEN = N - N-GEN ;

SET NP = N OR A ;                      # anything that can take except numerals
SET NP-HEAD        = Pron OR HNOUN - ("buorre") ;
SET NP-HEAD-SG     = SGPRON OR (n sg) OR (np sg) OR (a sg) - Cmpnd  - Dem - ("buorre");
SET NP-HEAD-PL     = PLPRON OR (n pl) OR (np pl) OR (a pl) - Cmpnd  - Dem - ("buorre");
SET NP-HEAD-SG-NOM = SGPRON + Nom OR (n sg nom) OR (np sg nom) OR (a sg nom) - ("buorre") - Cmpnd ;
SET NP-HEAD-PL-NOM = PLPRON + Nom OR (n pl nom) OR (np pl nom) OR (a pl nom) - Cmpnd  - ("buorre");
SET NP-HEAD-NOM    = NP-HEAD-SG-NOM OR NP-HEAD-PL-NOM ;
SET NP-HEAD-ACC    = (pron acc) OR (n acc) OR (np acc) OR (a acc) - Cmpnd - Dem - ("buorre");
SET NP-HEAD-GEN    = (pron gen) OR (n gen) OR (np gen) OR (a gen) - Cmpnd - Dem - ("buorre");

# The PRE-NP-HEAD family of sets
# - - - - - - - - - - - - - - - -

SET PRE-NP-HEAD = (np attr) OR (np @→N) OR (adj attr) OR (abbr attr) OR ("buorre") OR (prn pers gen) OR (n gen) OR (np gen) OR Num OR Cmpnd OR CC OR (prn dem) OR (prn ref gen) OR (prn ind) OR (prfprc @→N) OR PrsPrc OR (adj ord) ;
         # The strict version of items that can only be premodifiers, not parts of the predicate
         
SET V-PRE-NP = PrfPrc OR PrsPrc OR Actor OR Actio OR (vblex adj) OR (indic pres p3 sg) OR (indic pres p1 sg) OR (imp pres p2 du) ;
    # to be used together with PRE-NP-HEAD before @→N is disambiguated
         
SET NP-MEMBER   = PRE-NP-HEAD OR N ;

SET PRE-A-N     = (prn pers gen) OR (prn ind) OR Num OR (adj ord) OR (prn dem) OR (prn ref gen) ;

SET NOT-PRE-A-N = WORD - PRE-A-N ;

LIST PUNCT-LEFT = lquot ;
LIST PUNCT-RIGHT = rquot ;

SET PRE-APP   = COMMA OR PUNCT-LEFT OR PRE-NP-HEAD ;
 # This set ist not only for what can
                            # stand in front of appositions but also
                            # postmodifiers.

# V NPNHAIIP... N
# BOS ... N V

# There must be a sensible naming convention for these sets...
# Most strict BARRIERs...
SET NPNH     = WORD - PRE-NP-HEAD OR ABBR ;                     
# NPNH  = "NOT-PRE-NP-HEAD" 
SET NPNH1     = NPNH - Acc OR ABBR ; 
# To be used in mappingrules, before hte disambuation of Acc and Gen.                     

SET NPNHV    = WORD - PRE-NP-HEAD - V-PRE-NP ;                 
# including possible verbal premodifiers 
SET NPNHA    = WORD - PRE-NP-HEAD - Adv ;                      
# NPNHA = "NOT-PRE-NP-HEAD-OR-ADV"
SET NPNHAV   = WORD - PRE-NP-HEAD - Adv - V-PRE-NP ;           
# including possible verbal premodifiers
SET NPNHAI   = WORD - PRE-NP-HEAD - Adv - Indef ;              
# NPNHAI = "     ...-OR-INDEF"
SET NPNHAII  = WORD - PRE-NP-HEAD - Adv - Indef - Ill ;        
# Illative indir.obj.
SET NPNHAIIP = WORD - PRE-NP-HEAD - Adv - Indef - Ill - Pcle ; 
# <== is this our NPNH set?
SET NPNHC    = WORD - PRE-NP-HEAD - Com ;                      
# "njaŋggofirpmiiguin bivdin"
SET NPNHCCC  = WORD - PRE-NP-HEAD - COMMA ;
SET NPNHCC   = WORD - PRE-NP-HEAD - COMMA - LCRD ;
SET NAPP     = WORD - PRE-APP ;

# SET TOLERANT-PRENPP = V ; (everything non-NP-head!)
# ... Most sloppy BARRIERs

# Set for NP with participle premodifier
# ... IF *-1 X BARRIER NPNH OR 
# LocComIll are ok, but only with a PrfPcc to the right

# Other negatively defined morphosyntactic noun sets
# - - - - - - - - - - - - - - - - - - - - - - - - - 

SET NOT-N = WORD - N ;

#SET NOT-A = WORD - A ;

SET NOT-NA = WORD - N - A ;

SET NOT-NAPrfCC = WORD - N - A - CC - PrfPrc ;

SET NOT-NP = VFIN-NOT-NEG OR ConNeg OR Inf OR Pcle OR Interj OR CS ;
 # The set NP-BOUNDARY is bigger. 
SET NPROP = N - PROP ;

SET NOT-COMMA = CLB - COMMA OR PUNCT-LEFT OR PUNCT-RIGHT ;

SET NOT-QMARK = WORD OR CLB OR PUNCT - QMARK ; 

SET W-NOT-ACC-GEN = WORD - Acc - Gen ;


# Nouns
# ------

# Nominal sets defined according to their morphophonological properties
  
LIST NOM-GEN-NOUN = "ILO-tráktáhta" "TV-kamera" "agens" "agitáhtor" "ahkit" "akkumuláhtor" "aksiálláger" "aktuáhtor" "album" "alladeattacirggon" "allodatsárggon" "almmuhantávval" "alpinsuodjegahpir" "amaryllis" "ametysta" "analfabehta" "analysáhtor" "antikristus" "apoastal" "apoasttal" "apostal" "apotehkár" "apparáhta" "arena" "aristokráhta" "artoteahka" "aske#dihtor" "asymtohta" "asynkron#mohtor" "atlas" "audition" "automáhta" "autoritehta" "avista#veksel" "azzil" "bahta#boskkan" "dearvvašvuođadutkan#guovddáš" "dutkan#guovddáš" "guovddáš" "identitehta" "identitehtta" "jolá" "journála" "lága" "pláhta" "plána" "psykiatriija" "stáhta" "ulbmil" "unduláhta" "universitehta" "vahkku" "valuhta" "velositehta" "videoteahka" "viskositehta" "vuolle#nohta" "ákšu" "ánnuitehta" "ássi" "ášši" "čitna#hydráhta" "čáhce#crossa" "šlipsa" "CD-siŋgel" "ILO-tráktáhta" "Kárášjoh#suopman" "TV-kamera" "Vær-varsom-plakáhta" "advokáhta" "affrikáhta" "agens" "aggregáhta" "agitáhtor" "ahkit" "akkumuláhtor" "aksiál#láger" "aktivitehta" "akto#ealit" "akto#váhnen" "aktuáhtor" "album" "ales#gahcin" "ales#gahtin" "alfabehta" "alin" "alken" "alla#deatta#cirggon" "allodat#sárggon" "almennet" "almennet" "almmi#seasan" "almmuhan#dávval" "almmuhan#távval" "alpin#suodje#gahpir" "aláš#gohcet" "aláš#sinut" "amaryllis" "ametysta" "analfabehta" "analysáhtor" "androgen" "anti#kristus" "aorta#uvssot" "apoastal" "apoasttal" "apostal" "apoteahka" "apotehka" "apotehkár" "apparáhta" "arena" "aristokráhta" "arsen" "artoteahka" "aske#dihtor" "asymtohta" "asynkron#mohtor" "atlas" "atoma#fápmo#rusttet" "audition" "automáhta" "autoritehta" "aviisa#doalan" "avista#veksel" "azzil" "bahta#boskkan" "bajit#forminttár" "baján" "ballin" "balsam" "balsáma#bohppel" "bargo#márkan" "bargo#átnjal" "baromehtar" "baromehter" "barta#gávpot" "baskkot" "bassaladdan#rusttet" "bassasat" "bađoš#gaccet" "bađoš#gaccet" "beahce#báhcat" "beahce#hurggán" "beahce#mihttár" "beahce#čukkon" "beahcet" "bealdo#biššan" "bealdo#duhpát" "bealdo#máđir" "bealdo#rettet" "bealdo#sennet" "bealdo#sennet" "bealdo#sáhpán" "beallje#boskkan" "beallje#muhtter" "beallje#rokkan" "beallje#skuhran" "beallje#suojan" "bearbil" "bearpmet" "bearral" "beasse#skoabit" "beatnat#sarrit" "beavkkan" "beavváš" "befála" "bejot" "bensin#mohtor" "benzen" "beron" "berylla" "bevkor" "beštor" "biblioteahka" "bibliotehka" "bidjet" "biebmo#prosessor" "biebmo#rieban" "biebmo#váhnen" "biebmo#váhnen" "biegga#skoarkil" "biehkan" "biehtan" "biehtán" "biellán" "biergo#guhppár" "biergo#átnjal" "bieskán" "bievval" "bieđan" "bihcabáhcat" "bihcir" "bihkka#suohpan" "bihppor" "biibal" "biibbal" "biihtár" "biika#náhkat" "bijat" "bijat" "bijat" "bijat" "bikket" "bilkkár" "bilkár" "billár" "bilttet" "bippal" "birra#jándor" "birrin" "bismmar" "bismmá#čoahkkin" "bismmáid#čoahkkin" "bisso#beahcet" "bitumen" "bivddár" "bivttas#bažán" "bivttas#božán" "bivval" "bivššut" "biđggon" "biškkon" "boahtal" "boaisán" "boaisán" "boalddán" "boaldin#mohtor" "boaldo#mohtor" "boalvár" "boaran" "boargar" "boargár" "boargár" "boasta#steampal" "boasta#steampil" "boazo#eaiggát" "boazo#ealát" "boazo#isit" "boazo#suohkan" "boađđo#civkkán" "boaššo#bearpmet" "bodne#rivot" "bohcce#rusttet" "bohcce#čuohpan" "bohppel" "bohtal#raban" "bohtehtos" "bohtás" "boimmon" "boksa#raban" "boles" "bolfe#gaccet" "bolfe#gaccet" "bolgen#šelggon" "bolot" "bonte#heavval" "bonus" "boran" "borgár" "borjat" "borran#átnal" "borran#átnjal" "bosan" "boson" "botehtos" "botkkon" "botnit" "bovkor" "bođos#vuohtan" "boŋkor" "božán" "brensel" "bubmol" "buddha#tempel" "buhtat" "buhtet" "buijár" "buikkár" "buikár" "buimman" "buktin#hámman" "bulddán" "bulet" "bulkor" "bulmmot" "bulžžet" "bumbol" "bumeránskka" "bummal" "bummol" "buohcce#divššár" "buohkaid#čoahkkin" "buohkkistáhta" "buoiddat" "buolaš#suohpan" "buollin#biškkon" "buolát" "buorat" "buoráš" "buoskár" "buovnnjat" "buovnnjat#sáhpán" "buozan" "buozanvuoh0ta" "buošan" "buošut" "buošát" "bupmol" "burbor" "burpur" "burrut" "busir" "bussá#geahpil" "buvro#risen" "buđet" "bužan" "bábir#ráiggan" "bábir#čanan" "báhcat" "báhkin" "báhkkol" "báhkkon" "báhpa#čeabet" "báhtter" "báhtter#gealddán" "báikki#isit" "báikki#kásus" "báimman" "báitat" "bákte#gáiskkit" "bákte#gájan" "bálges" "bálká#soalddát" "bállat" "bálvalan#ámmát" "bálát" "bárel" "bárggeš" "bárggon" "báron" "bárral" "báson" "básár" "bátne#rokkan" "báđar" "báŋko#eaiggát" "bážan" "cagan" "cakkan" "cakkat" "ceakko#kartotehka" "ceakko#symptohta" "centi#lihtter" "centi#mehtar" "centi#mehter" "centilittar" "chili#bihppor" "cieban" "ciebat" "cielan" "cievan" "cihran" "cinemateahka" "cirggon" "civkkan" "coagan" "cokkan" "cuppol" "dahku#magnehta" "dato#stempel" "davve#vizar" "deagga#fiskes#loppan" "deagga#livkkár" "deagga#máđir" "deahkke#tonus" "dearppát" "dearvvašvuođa#divššár" "deatta#reguláhtor" "deattán" "deattán" "deavut" "debehta" "dehkar" "dehálašvuođa#ortnet" "dekstor" "delár" "demens" "denara" "deret" "desilihtar" "desilihtter" "devnnet" "devon" "dia#projektor" "diamehtar" "diamehter" "diehppe#lieđat" "diehppe#lieđat" "dielko#čuoivvat" "diesel" "diesel#mohtor" "dievŋŋat" "diggár" "dihtor" "diibmo#duojár" "diibmo#dávval" "dikkel" "dikkel#botnet" "dikkár" "diktáhtor" "diktár" "dikšár" "dilot" "dines" "dipma#biššan" "direktora" "direktoráhta" "diret" "dirgget" "diskotehka" "divat" "divat" "diversitehta" "divššár" "doaibma#almmái#ortnet" "doaibma#olmmái#ortnet" "doaibma#operator" "doaibma#vádjet" "doaimmár" "doaján" "doalan" "doares#bielka#lovtton" "doarjja#ortnet" "doavkkan" "dohkká#teáhter" "dolla#rieban" "dollár" "domisiila#veksel" "dopmo#njaman" "doron" "dorre#sáhpán" "dorrát" "doškkon" "dronnet" "drumbu#goazan" "drámá#teáhter" "dudnar" "duhpát" "duhpát#guhkkár" "duhtodat#árvo#operáhtor" "duhát#juolggat" "duivil" "dulben#jurssan" "dulján" "duljár" "dulját" "dumon" "duodjár" "duojár" "duolba#gavre#heavval" "duolba#heavval" "duolba#luovččan" "duolbbár" "duolddan" "duollje#uvssot" "duollár" "duolmman" "duolmman#šelggon" "duolva#čuoivvat" "duolvvár" "duopmo#kapihttal" "duopmár" "duottar#bussá#geahpil" "duottar#hávvar" "duottar#sáhpal" "durbbon" "durján" "dustton" "dutkkon" "dutnar" "duvdda#bearpmet" "duvhllár" "duvssár" "duđan" "dádel" "dággir" "dáhpa" "dáhton" "dáiddár" "dáidár" "dáige#jierit" "dájet" "dájon" "dálar" "dálon" "dálssár" "dálu#eamit" "dálu#isit" "dálve#ruoivil" "dálvvet" "dándor" "dápmot" "dápmot" "dássádahttin#giikan" "dávllat" "dávllet" "dávttat" "dávval" "dávvir" "dávžžan" "eagáš" "eahket" "eahket" "eahkit" "eahpe#ipmil" "eahppel" "eaiggát" "ealet" "ealit" "eallin" "ealán" "ealát" "ealát" "eami#álbmot" "eamit" "eana#bihttá#eaiggát" "eana#eaiggát" "eana#muolddat" "eanan#muolddat" "eappel" "eappel#geađge#čukkon" "earán" "eatnan#eaiggát" "eavddár" "eaŋgal" "eaŋkal" "ebel" "ebmos#lieđat" "ebmos#lieđat" "edet" "ednen" "ehpel" "eisse#válde#geavat" "ekonomiija" "ekonomiija#ortnet" "eksamen" "eksempel" "eksos#gássa#rusttet" "eksosa#rusttet" "eksámen" "ekváhtor" "el#mohtor" "el#orgel" "el-botkkon" "el-mihttár" "el-molon" "el-távval" "el-visppon" "elektrihkkár" "elektrisitehta" "endor" "endossáhta" "entitehta" "eppel" "erttet" "essea" "estimáhtor" "etnisitehta" "ettet" "evangelium" "evaŋgelium" "eváŋgiljon" "examen" "eŋgel" "facultatum" "fahkon" "fakta" "faktora" "fakultehta" "falan" "falat" "fanas#mohtor" "faskkan" "faskkon" "fasttat" "feambil" "fearan" "fearkil" "fearrán" "fearrán" "fearán" "feber" "femininitehta" "feminitehta" "fenomen" "feodála#ortnet" "ferkkon" "fidjol" "fidnár" "fiehtar" "fiehtat" "fierán" "fievrran" "fihkon" "fiiber" "fiikkon" "fiikon" "filbma#projektor" "finddár" "finer" "firet" "firon" "fiskes#beštor" "fiskes#iris" "fiskes#loppan" "fiskes#máđir" "fiskes#vizar" "fiskár" "fitnet" "flundar" "flygel" "flánealla#távval" "foahpir" "fokus" "fokusáhtor" "folin" "formel" "forum" "fototeahka" "fránsos" "fuohpuš" "fuolke#álbmot" "fuođđar#rájan" "fábel" "fáhkan" "fáksa" "fáktor" "fálle#vizar" "fálskkár" "fálttet" "fálttet" "fánen" "fánten" "fápmo#rusttet" "fáskir" "fássol" "fássol#doalan" "fásta#doavtter#ortnet" "fáŋgal" "gaccat" "gaccet" "gacceš" "gaccir" "gaccon" "gahpan" "gahpir" "gahčan#partihkal" "gaibbat" "gaigŋir" "gaigŋir#bismmar" "gaikár" "galbma#gáhkkor" "galjat" "galjot" "galján" "gallup" "galmmihan#mekanihkkár" "galmmihan#skáhpe" "gardnjil" "gargŋil" "garra#sinut" "gaska#goartil" "gaskan" "gavja#njaman" "gazir" "gazza#sáhpal" "gazzaš" "geafe#guhkkár" "geahpil" "geahče#doalan" "geahče#dulben#jurssan" "geaidno#gievkkan" "geaigán" "geaisár" "gealddán" "gealut" "gearret" "gearret" "geaset" "geasse#gollet" "geasse#universitehta" "geasse#čoavjjet" "geasse#čuččot" "geastegiivvár" "geasán" "geavat" "geavllet" "gehpot" "gehtet" "gemináhta" "general#majora" "generáhtor" "gerddon" "geret" "geson" "giedde#máđir" "giedde#sinut" "giehta#goazan" "giehta#heavval" "giehta#láiddot" "gieimman" "gierdo#dagan" "gieres#sabet" "gierrán" "gievkan" "gievkkan" "gieđalat#láiddot" "gihlar" "gihtet" "giikan" "giikar" "giikkár" "giippár" "giittos#rohkos" "giljon" "gilkkan" "gilkor" "gilljo#čearret" "gilljo#čearrit" "gilljon" "gillár" "gilomehtar" "gilomehter" "gilon" "gilvva#sáhpal" "girdi#hámman" "girdi#hávvar" "girdi#sáhpán" "girje#doalan" "girje#gorddet" "girje#livkkár" "girkolaš#čoahkkin" "giron" "gisor" "gissel" "gissor" "gitta#dávvir" "gitta#čoahkkin" "givgás" "giškon" "gluten" "glykogen" "glyptoteahka" "goadjin" "goadjin" "goaffar" "goahppil" "goaivvan" "goaktil" "goallár" "goalšo#vizar" "goapmir" "goaran" "goarat" "goarka#goarvvet" "goartil" "goarvvet" "goaskin" "goaskit" "goatnil" "goatnjil" "goazan" "goađe#eamit" "goađe#isit" "goaŧŧo#čeabet" "goban" "godde#sáhpán" "goden" "gohpe#heavval" "gohpe#luovččan" "gohrat" "goidoš" "goidár" "goike#hivsset" "goike#sallit#bállat" "goikket" "goivvon" "golbma#čiehka#sárggon" "golddán" "golggiidus#rusttet" "golggiidus#rusttet" "golggot" "golle#hámster" "golle#rieban" "gollen" "golmma#čiegat" "golmmet" "golár" "gontor" "goppás" "goppát" "gorddet" "gorddán" "gorut" "gosttet" "gosttet" "gotte#sáhpal" "gottur" "govddon" "govllon" "govva#album" "govva#dáiddár" "gozihan#čoahkkin" "goččor" "goččár" "gođán" "granáhta" "gubar" "gudjor" "guhkan" "guhkat" "guhkes#heavval" "guhkes#áigge#ulbmil" "guhkkár" "guhppil" "guhppár" "guhtal" "guikkut" "gulbmár" "gulkkan" "gullo#suojan" "gulmmet" "gulmmit" "gummi#stevvel" "gummi#sáppát" "guoccat" "guodja#vizar" "guohkan" "guohppar" "guohár" "guoih#gáhrit" "guoik'#gáhrit" "guoimmáš" "guoirrat" "guolban" "guolbba#gorddet" "guole#beahcet" "guolle#goaskin" "guolle#guhppár" "guolle#ipmil" "guolle#átnal" "guolle#átnjal" "guolle#čearret" "guorbban" "guorbbat" "guorpmat" "guorvil" "guossa#gaccet" "guossa#gaccet" "guossa#vizar" "guostta#čurrot" "guotnjar" "guotta" "guottet" "guottet" "guovddut" "guovddáš#dopmo#njaman" "guovddáš#guppol" "guovssat" "guovtte#dávttat#mohtor" "guovtte#iđot" "guovtte#iđot" "guovžur" "guppar" "guppol" "guppás" "gurbbet" "gurbmon" "guret" "gurpmat" "gurra#luođđa#láger" "gurra#šluppot" "gurvvon" "gusa#sáhpal" "guvhllár" "guvllár" "guzat" "guččor" "guččár" "guđahas#mehtar" "guškil" "guššát" "gádjit" "gáfe#silon" "gáffal" "gáhkko#bažán" "gáhkko#božán" "gáhkkor" "gáhpol" "gáhrit" "gáhrot" "gáhta" "gáhtegismmos" "gáhtir" "gáiddus#dárkon" "gáiskkit" "gáisá#bussá#geahpil" "gájet" "gájot" "gákkan" "gálbbe#čeabet" "gálddat" "gálddát" "gálgan" "gálgan#doalan" "gálggan" "gálggan" "gálgoš" "gálko#rieban" "gálkon" "gálljin" "gállot" "gálssot" "gálva#gorddet" "gálvo#kartotehka" "gálán" "gámmir" "gámmár" "gándil" "gándin" "gáneš" "gántor" "gárde#sáhpán" "gárde#vizar" "gárdin" "gárdin" "gárdnagas" "gárjil" "gáron" "gársan" "gártnit" "gárven" "gáskkit" "gáskkát" "gásor" "gássa#duolmman" "gássor" "gásár" "gását" "gávgil" "gávlo#rievttat" "gávlo#vuoján" "gávpe#gámmár" "gávpot" "gávpot#teáhter" "gávra#" "gávre#heavval" "gávrret" "gávrret" "gávval" "gáŋgen" "gášan" "habitualitehta" "hallusinogen" "halogen" "hammond#orgel" "haran" "harem" "haŋkin#váiddon" "heagga#ustit" "heahkel" "heahpat" "heakkel" "hearta#vizar" "heasta#gohrát" "heavval" "heittot" "heittot" "heksaedar" "helikopter" "helvet" "herkken" "hertnet" "herttot" "heđen" "heŋggon" "hihtat" "hilbbot" "hilla#ruovssut" "hiller" "historihkkár" "hivsset" "hivsset" "hiŋkkan" "hoagan" "hoaiddár" "hoalan" "hoapmir" "hoavkkát" "hoavrran" "hoašša#háigir" "hombil" "hommet" "honet" "honnet" "hopmir" "hubat" "huikkan" "huitor" "humaniora" "humbil" "humor" "hyasinta" "hydrogen" "hyperbel" "hypoteahka" "hypotenus" "háigir" "hálddahus#ortnet" "háleštan#skihpár" "hállár" "hálvvát" "hámman" "hámsson" "hánar" "hánat" "hándal" "hápman" "hárddan" "hárddán" "hárpmon" "hárset" "hársit" "hárát" "hárččet" "háskil" "hássel" "hássel#sáhpán" "hávde#gámmár" "hávlár" "hávskár" "hávvar" "háŋgil" "identitehtta:identitehta" "idja#gozán" "ieš#eaiggát" "ieš-pronomen" "iežas#veksel" "ihkkon" "ihkon" "ihto#sinut" "iissot" "iissot" "imaš" "immunitehta" "inspektoráhta" "indefinihtta#pronomen" "infiltrašuvdna#rusttet" "intensitehta" "internehta" "internáhta" "interrogatiiva#pronomen" "intranehta" "invaliditehta" "ipmet" "ipmil" "ipmit" "irján" "isit" "iskkár" "ivssut" "ivssut" "iđat" "iđit" "iđit#rohkos" "jahke#duhát" "jahke#čoahkkin" "jalleš" "jaman" "jarin" "jaspis" "jeagge#biššan" "jeagge#guškil" "jeagge#máđir" "jeagge#sáhpal" "jeagge#vizar" "jeara" "jester" "jiehkko#heavval" "jiellat" "jienastan#seattal" "jieret" "jierit" "jietna#váiddon" "jievjun" "jipmil" "jobbár" "johka#hávvar" "johtin#láger" "johtin#sabet" "jonssot" "jorba#oaivvat#spihkár" "jorbbot" "jorin" "jorran#áksil" "jorre#doalan" "jorre#láger" "joule" "journal#nummar" "jovssus" "juhkan#láse#doalan" "julii" "jumeš" "junii" "junior" "juogut" "juohko#pássár" "juolge#doalan" "juolge#nohta" "juolut" "juomit" "juovla#eahket" "juovla#káktus" "jury" "jurán" "jus#leksikon" "juster#stempela" "justitiarius" "justitiárius" "juvlii" "juvllii" "juvnii" "juvnnii" "juŋgel" "juŋkor" "jálás" "jámet" "jámit" "jándor" "kajenne#bihppor" "kaleandar" "kalkulator" "kalkuláhtor" "kamela" "kamera" "kandidáhta" "kapihttal" "kapihttal" "karbo#hydráhta" "kardeaksa" "karoten" "kartoteahka" "kartotehka" "kasus" "katalysáhtor" "katehta" "katekehta" "keaisár" "keallár" "kefir" "keret" "kervel" "kievkkan" "kihtet" "kijkkár" "kijppár" "kilo#mehtar" "kilo#mehter" "kilo#mettar" "kinemateahka" "kinoteahka" "kirkolaš#čoahkkin" "klassihkkár" "kliissár" "klimáhta" "klyxa" "koordináhta" "koordináhtor" "koaffar" "koartil" "kodicilla" "kodisilla" "koffar" "komehta" "kommeanta#partihkkal" "kondensáhtor" "konfoluhtta#njolon" "konserváhtor" "konsuláhta" "kontor" "konttor" "korinta" "koriánder" "korpus" "korreláhta" "kosttet" "kreativitehta" "kreatsa" "kredihtta#rehket" "kriminalitehta" "kritera" "krysoprasa" "krysolihtta" "kráhter" "kubbel" "kullár" "kuntepillar" "kuráhtor" "kuššát" "kvalitehtta:kvalitehta" "kvantifikáhtor" "kvantitehtta:kvantitehta" "kviteret" "kvohta" "káfe#silon" "káffal" "káhkal" "káhtekismmos" "kámmir" "kámmár" "kánel" "kántor" "kápihttal" "kárven" "kásus" "kávrret" "kávval" "labirinta" "labyrinta" "ladni" "lakta#partihkkal" "laktin" "lappe#kodisilla" "laser" "lassi#árvo#divat" "lasttat" "lađan" "lađas#juolggat" "lađas#juolggat" "leaggán" "leana#dáiddár" "ledjon" "legitimitehta" "leibor" "leksikon" "lektor" "lektoráhta" "liegga#áibmo#rusttet" "liekkan" "liekkas#mihttár" "lievde#njaman" "lievla#njaman" "lieđđe#širan" "lihpar" "lihtar" "lihtor" "lihttar" "lihtter" "lihtto#stáhta" "liidna#kláva" "liige#befála" "liige#modula" "likten#heavval" "likviditehta" "linddor" "linjen" "linjjá" "linjár" "linnjen" "linnjár" "lisensiáhta" "litnet" "littar" "livat" "livnnet" "livttes#risen" "liántta#bužan" "loabát" "loahppa#kommunikeá" "lodde#virus" "lohkan#ortnet" "lohkir" "lohkke#raban" "lohkkir" "lojan" "lojat" "lokkon" "lokál#kásus" "lotte#gazza#sáhpal" "lottáš" "lovppár" "lovpár" "lovttan" "lovtton" "luffel" "luhkkár" "luhtat" "luhtehas#čukkon" "luhtet" "luksus" "luleš" "lummor" "luohkká#skihpár" "luohpet" "luoimman" "luojan" "luosat" "luossa#veajet" "luoste#sáhpán" "luosttat" "luotne#gáffal" "luottut" "luovat" "luovddat" "luovvar" "luovččan" "luovččan#šluppot" "luođđa#doalan" "luođđa#láger" "lutton" "luvddon" "lyra" "ládjo#gahpir" "láfol" "láfon" "láger" "lágut" "láhken" "láhkán" "láhten" "láiddon" "láiddot" "láidon" "láidun" "láikkan" "láitta#heavval" "láittan" "láittán" "láittár" "láktor" "lámbor" "lánnot" "lántor" "lánuorat" "láse#raban" "láser#čálán" "láskut#kartotehka" "láttat" "láttat" "láttán" "lávet" "lávgo#lovtton" "lávkkon" "lávllon" "lávot" "lávár" "láđđe#muzet" "láđđe#čáhpot" "lášmmut" "magnehta" "majestehta" "majora" "majoritehta" "mammon" "manager" "mandel" "mandáhta" "manin" "manin" "manna" "mano#mehtar" "maori#álbmot" "maraton" "marmor" "martihkkal" "maskulinitehta" "master" "matemátihkka" "matrikkel" "matrikkel#nummar" "maŋŋe#bismmar" "maŋŋe#stávval" "maŋŋe#áksil" "maŋŋe#ánnuitehta" "maŋŋe#šelggon" "maŋŋeš" "maššir" "meahcce#luovvar" "meahcce#lávet" "meahcce#váran" "meahcet" "meahcit" "meaisil" "meargŋun" "mearra#goaskin" "mearra#háskil" "mearra#álbmot" "meassár" "meađđen" "meaštár" "mediateahka" "mediatehka" "medieteahka" "megon" "mehtar" "mehter" "meinnet" "meisset" "mekanihkkár" "meren" "meres" "merkkon" "messet" "mettar" "miehte#gieđa#geavat" "miel#duopmár" "miel#eaiggát" "miella#vádjet" "miese#gahpir" "miestta#vizar" "mieđut" "mihttár" "mikro#botkkán" "mikro#doaimmár" "miktam" "milli#mehtar" "milli#mehter" "minikumma" "minister" "minoritehta" "moarrun" "modalitehta" "modernitehta" "modifikáhtor" "modula" "modus" "mohtor" "mohtor#crossa" "mohtor#liekkan" "moivvár" "moksin" "molon" "molssa#gákkan" "molsson" "molybden" "monin" "monin" "morddár" "mordár" "mosat" "moto#crossa" "moxa" "muffa" "muhke#biđggon" "muhkke#bulkor" "muhtor" "muhtter" "muito#nummir" "mulggon" "muohta#skohter" "muohta#skuhter" "muolddat" "muorra#faskkon" "muorra#goarvvet" "muorra#guppol" "muorra#ipmil" "muovje#jieret" "muoŧáš" "muoŧŧal" "murdin#molsson" "museum" "musihkkár" "muslim" "muzet" "muzet#čuoivvat" "muđon" "myhta" "myrra" "myrrá" "mádjit" "máhkan" "máhta" "máiddon" "májor" "máles#risen" "málgor" "málljar" "málár" "mámmon" "mándel" "mánus" "máran" "márbmor" "márffon" "márgár" "márkan" "márkan" "máron" "másomman" "máttil" "máđir" "naleš" "namma#gilkor" "namma#láhpan" "namma#láhpat" "nannán" "našunal#teáhter" "neahpát" "nealggár" "neavttár" "neillet" "nelet" "nelet" "nelot" "nenetsa" "netto#rehket" "nieida#gearret" "nieida#lihtor" "nieida#sahpal" "nieiddas#nisson" "nihkkel" "nihppel" "nii0kun" "niito#sáhpal" "niito#sáhpán" "nirbbet" "nisson" "nissun" "nivssat" "njalddán" "njaman" "njamat" "njeahcet" "njealje#juvllat" "njealje#čiegat" "njealjit" "njeccon" "njelot" "njiezat" "njigan" "njigon" "njiman" "njoalve#láger" "njoammil" "njoazan" "njolon" "njomon" "njozon" "njuikkon" "njulggot" "njunne#duhpát" "njuolggo#golmma#čiegat" "njuolggo#sátne#ortnet" "njuolggut" "njuorat" "njuorddut" "njuorjjo#čázet" "njuorjjot" "njuovan" "njuovvan#rusttet" "njuovčča#lieđat" "njuovčča#lieđat" "njuozat" "njurggan" "njurggon" "njuvddán" "njuvvat" "njágan" "njáhco#sabet" "njáhco#suohpan" "njáhka#veajet" "njálbme#fidjol" "noahtal" "nohta" "nomen" "nomináhta" "notáhta" "novrrán" "nuhtat" "nuhtot" "nulpo#gahpir" "nummar" "nummir" "nummár" "nuorta#gáiskkit" "nuorttut" "nuvan" "nuvttat" "nuvttot" "nábor" "nábot" "nábár" "náhpol" "náhpul" "náhpur" "nállo#láger" "náskál" "náste#finddár" "návet" "oaffar" "oagan" "oaive#gávpot" "oaive#ipmil" "oaive#isit" "oaive#joran" "oaive#skuvrin" "oaivil" "oales#heavval" "oalge#doalan" "oapman" "oarjel#sámegiel#arena" "oarján" "oassá#lasti" "oaván" "obba#bihppor" "obba#gárdin" "obba#rehket" "obersta" "observatora" "ogon" "ohter" "oiddot" "oidno#vihtan" "okkon" "oksygen" "oktaedar" "okto#ealit" "okto#orut" "olles#čoahkkin" "ollut" "ollut" "olmmoš#joren" "olmmoš#joren" "olmmoš#jorán" "olssot" "olus" "olut" "olut" "omen" "omman" "opera" "operáhtor" "opmir" "oppa#tráilar" "oppal" "oppas#rievttat" "orakel" "orbbeš" "orbbeš#goartil" "ordel" "ordil" "orgel" "orgil" "orrit" "ortnet" "orut" "oskál" "otnáš" "ovda#gáffal" "ovda#gávpot" "ovda#ánnuitehta" "ovda#šelggon" "ovddas#rohkos" "ovsttán" "ovtta#iđot" "ovtta#iđot" "ovttas#doaibman#arena" "ovttas#eaiggát" "ovttet" "ođat" "ođut" "paradiijás" "paradiás" "paradoksa" "parlamentarihkkár" "parlamentihkkár" "partihkkal" "parábel" "passivitehta" "person#nummir" "philosophicum" "pinakoteahka" "plakáhta" "plenum" "pohtehtos" "poles" "poles#kámmir" "politi#avokáhta" "politihkkar" "politihkkár" "pollen" "preassa" "predikáhta" "predikáhtor" "prioritehta" "priváhta" "proavás" "proavás" "produktivitehta" "profehta" "professor" "professoráhtta" "projektor" "promilla" "pronomen" "prorektor" "proseassa" "proselyhtta" "prosessor" "purpur" "pyramida" "pássár" "raban" "rabas#čoahkkin" "rabárber" "radiáhtor" "radiál#láger" "ragat" "rahpot" "ravddat" "ravggon" "realitehta" "refleaksa#veahčir" "regressáhta" "reahka#jálás" "reahpen" "reaidnár" "reainnár" "reantár" "refereanssat" "referáhta" "regeanta#nummar" "regel" "reguláhtor" "rehket" "rekambio#rehket" "rekel" "rektor" "rektáŋgel" "relatiiva#pronomen" "relativitehta" "reportár" "resiprohka#pronomen" "rettet" "revolver" "revolvár" "revy" "reáktor" "ribat" "ribon" "ridda#sáhpal" "riddo#máđir" "riddár" "rieban" "riehkan" "riehtet" "riejan" "riekte#regel" "rievssat" "rievtti#geavat" "rievvár" "riffal" "riffel" "rigearár" "rihcit" "rihkko#heavval" "rihkon" "riika#ráđđe#adel" "riika#čoahkkin" "riikka#beaive#ortnet" "rikkearár" "ris#váhnen" "ris#váhnen" "risen" "rist#váhnen" "rist#vánhen" "rista#rieban" "rivot" "rivttár" "rivut" "roabát" "roahkan" "roahnit" "roamše#jierit" "roatnet" "rockár" "rogon" "rohkkil" "rohkos" "rohkot" "rohpe#geaigán" "rohto#gaccet" "rohto#gaccet" "rohto#máđir" "rohto#vizar" "rohtor" "roibbon" "rokkan" "roman" "romani#álbmot" "romat" "ronnet" "rosgeret" "rosttot" "rottet" "rubel" "ruhkos" "ruhmut" "ruivvan" "rukses#feber" "rukses#guškil" "rukses#luovvar" "rukses#rieban" "rukses#ruoivil" "rukses#sinut" "rukses#sáhpán" "rulla#láger" "rullit" "ruohkan" "ruohtta#eahket" "ruoinnan" "ruoinnat" "ruoivil" "ruossa#riddár" "ruossa#rieban" "ruovde#gulmmet" "ruovde#gákkan" "ruovde#máđe:ruovde#máđe" "ruovssut" "ruovtto#goatnil" "ruovttot" "ruovttu#divššár" "ruođat" "ruoške#mándel" "ruošša#gearvil" "ruošša#guovssat" "ruošša#njoammil" "ruošša#állat" "ruošša#állat" "ruppal" "rusen" "rusttet" "rutnot" "ruŋkul" "ruškkut" "rábbe#goaskin" "rábit" "rábon" "rábát" "rádje#soalddát" "rádár" "ráhnit" "ráhto#goaskin" "ráiggan" "rájan" "rájus#kartotehka" "rámmát" "ránan" "ránat" "rándat" "ránes#beštor" "ránes#háigir" "ránes#livkkár" "ránes#rieban" "ránes#sáhpán" "ránsel" "ránsos" "rántet" "ráppár" "rásse#lohkko#vizar" "rásttes#vizar" "rátno#gođđin#stuolet" "rátno#stuolet" "rávdnje#aggregáhta" "rávnnut" "rávrran" "rávál" "ráđđe#dagat" "ráđđe#čoahkkin" "sabet" "sabit" "safira" "sahen#rusttet" "sahán#rusttet" "sal#biehtár" "sal#pehtter" "sallit" "sallit" "saláhta" "sampel" "sardonyksa" "sarrit" "sarrit" "sasttet" "savvon" "seagan" "seahkka#njurggan" "seahkot" "seaibbat" "seakka#gorddet" "seakka#sáhpal" "seakŋáš" "searvo#goazan" "seasan" "seattal" "seavdnjat" "seavnnját" "seaŋga#nisson" "seder" "sehpet" "seivvon" "sekel" "sekkor" "sektor" "seller" "selota" "semi-tráilar" "senet" "senet" "senior" "sennet" "sensitivitehta" "senti#mehtar" "senti#mehter" "senáhta" "sepmon" "septeamber" "septeambár" "serrat" "sesam#siepman" "seđel" "siepman" "sierat" "sierra#oaivil" "sierrán" "sierát" "siessal" "siffar" "sihkkel" "sihkon" "sihkor" "siidagas#vuoján" "siidda#isit" "siido#šelggon" "siiggát" "silan" "silar" "silon" "sirkil" "sirkus" "sirot" "sirot" "sirát" "sis#bandy" "sis-bandy" "siste#suorpmat" "sisttet" "sitara" "sitron" "sitáhta" "sitáhtta" "sivii0la:sivij'la" "sivjjot" "sivjjot" "sivnnát" "skabilken" "skabus#risen" "skarlagen" "skeaikkan" "skeaŋkár" "skeijár" "skerttet" "skievttár" "skiffar" "skihkár" "skihpár" "skilan" "skillet" "skirttet" "skoaran" "skoarkil" "skoavit" "skohtal" "skohter" "skohttal" "skoret" "skovlot" "skreaddár" "skruvva#bonjan" "skruvva#doalan" "skruvva#čárvvon" "skuhter" "skuhttár" "skuibor" "skumot" "skuoggir" "skuoggun" "skuoggun" "skuohtal" "skupmot" "skurbban" "skurbbet" "skurvvát" "skuter" "skuvla#skihpár" "skádja#seasan" "skáhčir" "skájan" "skárbban" "skárben" "skávval" "skávžžet" "smaragda" "smarágda" "smeargil" "smávva#boargár" "snelkkon" "snielut" "snihkkár" "snihppar" "sniiggár" "snijkkár" "snuiba#gahpir" "snuohtar" "snuolggár" "snuvssa" "snuđđor" "snáhpot" "snáhput" "snárket" "snávggut" "soabat" "soadje#sáhpán" "soahke#sáhpán" "soahte#soalddát" "soalddát" "soande#geasehan#bulkor" "soavvil" "soađan" "sohken" "soidnár" "solidaritehta" "solon" "sosial#demokráhta" "sotkkon" "sovkken" "spanut" "spažut" "speadjal" "speadjár" "speallan" "speisse#dálar" "speisset" "spektra" "spenáhta" "spetakkel" "spierta#čáhput" "spihkár" "spijkkár" "spináhta" "spivkkár" "spoavár" "sponsor" "sponta#heavval" "spáillit" "sruva#bonjan" "sráŋga#spihkár" "sráŋga#spiikkár" "stabilitehta" "stadi" "stadion" "stahtor" "stahtus" "stajár" "stalin#orgel" "standárden" "steaika#oapman" "stealle#nihppel" "steampal" "steampil" "steiken#termo#mihttár" "stellet" "stempel" "stetoskohpa" "stevdne#vihtan" "stevnnet" "stevvel" "stihka#gálssot" "stihka#gálssot" "stihká#gálssot" "stihká#gálssot" "stipendiáhta" "stivrra#čoahkkin" "stivrran" "stivrrár" "stoagan" "stoahčat" "stoahčet" "stoahčet" "stoavkkan" "stobe#raban" "stohpo#ortnet" "stokk#áŋkor" "stuora#háskil" "stuorat" "stuorra#geavjjat" "stuorra#gávpot" "stuorra#háskil" "stuorra#máđir" "stuorra#neillet" "stáhkkár" "stáhta" "stáhta#advokáhta" "stáhta#borgár" "stáhtus" "stáidnár" "stáinnat" "stáinnir" "stálle#doalan" "stálo#bárggeš" "stámbbut" "stárre#rutnot" "stávval" "stáđut" "subordináhtor" "substituhta" "substráhta" "suhkkol" "suhkol" "sui0te" "suittet" "suittet" "sukkol" "sukseassa" "suksessa" "sulfáhta" "sulin" "suodje#gahpir" "suodjár" "suohkan" "suohkat" "suohkat#risen" "suohpal" "suohpan" "suoidne#spábba#čárvvon" "suoidne#vahát" "suoidne#vahát" "suoivvan" "suojan" "suoksa#čurot" "suoksa#čurrot" "suonat" "suonjan" "suonjar#láger" "suonjir" "suopman" "suorat" "suorit" "suorpmat" "suovva#rieban" "suoŋir" "suvddár" "suvdár" "suverenitehta" "suvvol" "suđi#láttán" "sveisen#boalddán" "svisker" "syhkkel" "sykkel" "synkron#mohtor" "sábbát" "sábel" "sábát" "sádel" "sáfrán" "ságel" "ságge#gahpir" "ságát" "sáhco#dagan" "sáhkel" "sáhkát" "sáhpal" "sáhpel" "sáhpit" "sáhppes#jieret" "sáhpán" "sáhtán" "sákkil" "sákkin" "sálkor" "sálon" "sáme#digge#politihkkár" "sámmál" "sánddat" "sándil" "sáppat" "sáppát" "sárggon" "sátne#ortnet" "sáttat" "sávdnje#heavval" "sávzza#sinut" "sáđgin" "sáŋgár" "sŋiran" "tabernakel" "tableahtta" "tabuláhtor" "taffel" "taiga:tajga" "taksi" "teknihkkár" "telefon#nummar" "telefon#nummir" "telefon#čoahkkin" "tempel" "tempus" "teret" "termostáhta" "terror" "terrárium" "tetraedar" "tevnnet" "teáhter" "tiggár" "tihttel" "timotemos" "tingeltangel" "tomáhta" "topasa" "totem" "trailer" "traktor" "transformáhtor" "transistor" "trasáhta" "trinitrotoluen" "trippel" "triáŋgel" "trompehta" "trumpehta" "tráilar" "tráktor" "tráktáhta" "tulján" "tuljár" "tulját" "tuohpis" "tuollár" "turbo#mohtor" "turnus" "táhka" "táhkkal" "távval" "uksa#bearpmet" "ulbmil" "unduláhta" "universitehta" "unnit#álbmot" "upmol" "urbil" "urbán" "urmáhkár" "ustit" "uvssot" "uđámat" "vadnin" "vahát" "vajahas#gorddán" "valat" "valljivuođa#ortnet" "valmue#siepman" "valuhta" "varit" "varit" "variábel" "variáhtor" "varra#deaddo#mihttár" "varra#heahpat" "veabel" "veahkke#divššár" "veahkke#professor" "veahkkár" "veahčir" "veaike#boson" "veajet" "veaksel" "veaksil" "veallan" "veambil" "vearret" "vearro#livnnet" "vearro#martihkkal" "vearál" "veattat" "veattán" "vehikkel" "veivár" "veksel" "vektor" "velositehta" "ventiila#lovttan" "venzzon" "verrát" "vevvel" "veđor" "videoteahka" "viehkat" "viehta" "vielggut" "vieljaš" "viellja#álbmot" "viesso#hoaiddár" "viesso#hoiddár" "viesso#sáhpán" "vihtan" "viissár" "viisár" "viivvut" "vilges#bihppor" "vilges#bohppel" "vilges#háigir" "vilges#loppan" "vilges#luovvar" "vilges#máđir" "vilges#sennet" "vilges#sennet" "vilgon" "vintán" "viskositehta" "vispil" "visppon" "vissir" "visttan" "vizar" "viđa#čiegat" "viŋkil" "volta#mihttár" "vuhpon" "vujon" "vuobirs" "vuobis" "vuohes" "vuohtan" "vuohtan" "vuoidan#nihppel" "vuoiddas#božán" "vuoigatvuođa#kánsler" "vuoigŋan" "vuojahan#rusttet" "vuoján" "vuokta#boršta#doalan" "vuokta#gaccet" "vuokta#gaccet" "vuokta#láfol" "vuolahas#doaján" "vuolan" "vuolle#nohta" "vuopman" "vuorjjan" "vuorjjat" "vuoste#gieđa#geavat" "vuosttut" "vuostá#heavval" "vuovddit" "vuovde#gaccet" "vuovde#gaccet" "vuovde#godde#sáhpán" "vuovde#gáiskkit" "vuovde#sáhpal" "vuovde#sáhpán" "vuovde#veasen" "vuovde#vizar" "vuođđo#isit" "vuskkon" "vádjit" "vádjit" "váhkar" "váhkol" "váhnen" "váhttar" "váhtter" "váibbat" "váibmo#uvssot" "váiddon" "váivván" "válbor" "váldo#guottet" "váldo#ragat" "váldo#suopman" "vánhen" "váran" "várrehus#golmma#čiegat" "várvvár" "váskkir" "vátne#mielat" "vátnen" "váđas" "váđir" "váđot" "web#logan" "áddjot" "áddjut" "ádel" "áhkil" "áhkkut" "áhkkut" "áhkkár" "áhpe#rievssat" "áhttán" "áhččemin" "áibme#sákkan" "áibmo#bismmar" "áiccan" "áide#sáhpal" "áige#dávval" "áige#távval" "áige#čáján" "áinnut" "áiro#hopmir" "ákkil" "áksil" "áktor" "álbmot" "álgo#álbmot" "álin" "állan" "állat" "állat" "álon" "álsset#luovvar" "áltár" "ámmat" "ámmát" "ánnuitehta" "ápmil" "ápmir" "áppes" "áppet" "ápril" "áren" "árggan" "árka#cokkan" "árra#iđit" "árran" "ártnot" "árvo#dávvir" "árvo#ortnet" "ásat" "ásen" "ásii" "ásii" "ássi" "ávggos" "ávgos" "ávil" "ávjjur" "ávskár" "ávvir" "áŋkor" "østrogen" "č.ortnet" "čalbme#alán" "čalbme#oaidno#vihtan" "čalmme#oaidno#vihtan" "čalán" "čanan" "časkin#váiddon" "časkkan" "čavil" "čavččat" "čađan" "čeabet" "čeabet#njárččet" "čeabát" "čeahcet" "čeahcit" "čearpmat" "čearret" "čearret" "čearrit" "čeaskkut" "čeavllit" "čelččen" "čerggon" "čeŋkkeš#goartil" "čiegus#oaivil" "čieh#gahpir" "čiehka#dagan" "čiekčan#sabet" "čiekčár" "čielge#doalan" "čitna#hydráhta" "čiŋkkon" "čoahkkin" "čoahkkin#givssár" "čoahkkin#ortnet" "čoahkkár" "čoakkán" "čoakkán" "čoarve#heavval" "čoaskin" "čoavdda#bonjan" "čoavjjet" "čogat" "čohkkun#doalan" "čolon" "čorggut" "čuget" "čukkon" "čulggon" "čunu#goallár" "čuohpan" "čuoigan#sabet" "čuoiggan" "čuoih#gahpir" "čuoivvat" "čuojan" "čuolan" "čuonan" "čuorbban" "čuorggat" "čuorggut" "čuotnan" "čuovga#dávval" "čuovga#gilkor" "čurot" "čurrot" "čuvde#goartil" "čužot" "čábbon" "čáhce#bulkor" "čáhce#crossa" "čáhce#fápmo#rusttet" "čáhce#njaman" "čáhce#sabet" "čáhce#sáhpán" "čáhce#viehkat" "čáhce#ásat" "čáhpot" "čáhppes#bihppor" "čáhppes#dávval" "čáhppes#gaccet" "čáhppes#gaccet" "čáhppes#háigir" "čáhppes#jierit" "čáhppes#rieban" "čáhppes#vizar" "čáhppes#váđot" "čáhput" "čáihne#gaccet" "čálat" "čálggat" "čálgo#ortnet" "čálán" "čám#bohkal" "čám#bokkal" "čáppon" "čárvvon" "čázet" "čázit" "šealggut" "šeaman" "šelges#čuoivvat" "šelggon" "šibit" "šiiva#goazan" "šilljo#čuččot" "šilljo#čuččot" "širan" "šleaŋga#čuoivvat" "šlembbon" "šleđggon" "šleŋggon" "šliip0pár" "šlimir" "šlipsa" "šloahpar" "šlohtor" "šlubbo#oaivvat" "šluppot" "šlámbor" "šláŋŋa#čárvvon" "šoaran" "šoavkkut" "šolár" "šombbár" "šođbbut" "šuokŋa#gáffal" "šuvon" "šáhčir" "šávan" ;

   # in singular, Nom=Gen=Acc. The C-final ones are poetic short genitives
   # for the GAHPIR nouns, the V-final ones are either STAHTA ones or they
   # are III-II GOAHTI ones (the last group has not been systematically added)

# Sets for lexeme homonymy (most of them are moved to where the actual rules are.)
# ------------------------

# These can be both N and Po:
LIST NOUN-PO = "áigi" "gaskan" "gaskka" "gaskkas" "guovddáš" "ovddas" "vuostá" ;


# No need for the set for "guovddáš". Now we have a select-reg.ex-rule for it. But because of the "prefer LEX to Der"-rule, every reading is "guovddáš" N, which is not so bad afterall.
# - - - - - - - - - - 

#LIST GUOVDDAS = "áibmo#media#guovddáš" "Ája#-guovddáš" "ÁJA-#guovddáš" "AV-#guovddáš"  "álbmotmeahcce#guovddáš"  "álbmot#meahcce#guovddáš" "Álgoálbmot#guovddáš" "álgoálbmot#guovddáš" "bajásšaddan#guovddáš" "bargo#guovddáš" "bálvalus#guovddáš" "bearašsuodjalan#guovddáš" "bivdo#guovddáš" "bargo#eallin#guovddáš" "čoahkke#ássan#guovddáš" "data#guovddáš"  "dáhpáhus#guovddáš"  "dáidda#guovddáš" "dásseárvo#guovddáš"  "dásse#árvo#guovddáš" "dearvvašvuođa#guovddáš" "dearvvašvuođa#dutkan#guovddáš" "dearvvašvuođabálvalus#guovddáš" "dearvvašvuođa#bálvalus#guovddáš" "dieđa#guovddáš" "diehto#bálvalan#guovddáš" "dearvvašvuođadutkan#guovddáš" "diehto#guovddáš" "diehtobálvalan#guovddáš" "diehtojuohkin#guovddáš" "diehto#juohkin#guovddáš" "doaibma#guovddáš" "doaimma#guovddáš" "doavtter#guovddáš" "dokumentašuvdna#guovddáš" "dokumenteren#guovddáš"  "drošše#guovddáš" "dutkan#guovddáš"  "duodje#gávpe#guovddáš" "duođaštan#guovddáš" "duođaštus#guovddáš"  "duodje#guovddáš"  "ealáhus#guovddáš" "eamiálbmot#guovddáš" "eamiálbmotdutkan#guovddáš" "eami#álbmot#guovddáš" "eami#álbmot#dutkan#guovddáš"  "eanan#guovddáš"  "etno#musihkka#guovddáš" "earkebisma#guovddáš" "earke#bisma#guovddáš" "etnomusihkka#guovddáš" "fága#guovddáš" "fáles#guovddáš" "fáles#bivdo#guovddáš" "fierpmádat#guovddáš" "filbma#guovddáš"  "gaskkustan#guovddáš" "gádde#guovddáš" "gálvo#guovddáš" "gálvo#lonuhan#guovddáš" "gárgedan#guovddáš" "gávpe#guovddáš" "gávpot#guovddáš" "gelbbolašvuođa#guovddáš" "gelbbolašvuohta#guovddáš" "gealbo#guovddáš" "gieldda#guovddáš" "giellagelbbolašvuođa#guovddáš" "giella#guovddáš" "gili#guovddáš"  "gulahallan#guovddáš" ("guovddáš" Loc) "gullo#guovddáš" "guolle#guovddáš" "guorahallan#guovddáš" "hálddahus#guovddáš" "hálddáhus#guovddáš" "hárjehallan#guovddáš" "heahte#guovddáš" "hearge#sáhtto#guovddáš" "julevsáme#guovddáš" "julev#sáme#guovddáš" "konserveren#guovddáš" "kultur#guovddáš" "kultur#-guovddáš" "kultur#suodjalan#guovddáš" "kunddar#guovddáš" "lagas#biras#guovddáš" "lášmmodahttin#guovddáš" "máhtto#guovddáš"  "máilmme#guovddáš" "meahcce#guovddáš" "militeara#guovddáš"  "miššuvdna#guovddáš" "musea#guovddáš" "nisson#guovddáš" "nuoraid#guovddáš" "oahpahan#guovddáš" "oahpahus#guovddáš" "oahppan#guovddáš" "oahppo#guovddáš" "oahpponeavvo#guovddáš" "oahppo#neavvo#guovddáš" "oaivadan#guovddáš" "opmodat#guovddáš" "ovdánan#guovddáš" "ovddidan#guovddáš"  "rehket#doallo#guovddáš"  "registreren#guovddáš" "repetišuvdna#guovddáš" "ressursa#guovddáš" "resursa#guovddáš" "sáhtto#guovddáš" "sámi#guovddáš" "sis#guovddáš" "skuvla#guovddáš" "sosiála#guovddáš"  "spesialistadoavtter#guovddáš" "spesialista#doavtter#guovddáš" "statistihka#guovddáš" "TE-#guovddáš"  "teáhter#guovddáš" "teknologiija#guovddáš" "telegráf#guovddáš" "turista#guovddáš" "váldo#guovddáš" "veahkke#neavvo#guovddáš" "vuovde#guovddáš" ;

# The LAHKA set family
# - - - - - - - - - - 

LIST LAGA = (".*bargo#lága"r) "spábbačiekčan#lága" ;

LIST LAGALAHKA = (".*bargo#láhka"r) "spábbačiekčan#láhka" ; 

SET LAHKA = (".*#láhka"r) - LAGALAHKA ;


LIST LAHKA-MOD = "almennet" "almmolašvuođa" "apotehka" "arkiiva" "áhpenuohtástan" "álbmotoadjo" "bargi" "bargo#biras" "báike#namma" "bákte" "bátnedearvvašvuođa#bálvalus" "bivdo" "boazodoallo" "čázádat" "dálkkas" "dásseárvo" "deatnu" "dearvvašvuođa#bargi" "dearvvašvuohta" "dearvvašvuođa#fitnodat" "dearvvašvuođabargiid#láhka" "dearvvašvuođa#registtar" "divššohas#vuoigatvuohta" "doaibmi" "eana" "eanasuodjalan" "eanavuovdin" "elliid#suodjalan" "energi" "fápmudus" "fápmudus" "Finnmárko" "friddja#suohkan" "fuođđo" "gávpot" "geaidno" "gearggusvuohta" "gielddadearvvašvuođa#bálvalus" "gielda" "gilioppalaš#eana" "irko" "golle" "guladigge" "guolle#biebman" "háhkan#konsešuvdna" "hálddašan" "heaggadieđut" "huksen" "industri#konsešuvdna" "jávre#bivdo" "joatkkaoahpahus" "johtolat" "konsešuvdna" "kultur#muito" "lavdnje#loggun" "lotnolasealáhusa#bargi" "luodda" "luonddusuodjalus" "luopmo" "luossa" "mánáid#gárdi" "mánáidsuodjalus#bálvalus" "mearraguolástan" "mearra#resursa" "minerála" "mohtorjohtolat" "mudden" "namma" "Norga" "norga" "oahpahalli" "oahpahus" "oahpo" "oassálastin#láhka" "olgunastin" "olmmoš#vuoigatvuohta" "oktasašsáme" "pasienta#vuoigatvuohta" "ráŋggáštan" "resursa#hálddašeapmi" "riekte#veahkke" "sáiva#bivdo" "sámi" "searvan" "sierra" "spesialistadearvvašvuođa#bálvalus" "stáhtaborgár#rievtti" "stáhta#fitnodat" "tuollu" "uhccimusmihtto#njuolggadus" "varas#guolle" "várre" "vearro#dahko" "vearro" "vuođđo" "vuođđo#skuvla" "vuovde#doallo" "vuovde#gáhtten" "vuovde" "1789" "1842-" "1863-" "1888" "1888-" "1899-#bivdu" "1899-" "1920-várre" "1933-" "1965" "1965-" "1975-" "1975-várre" "1978-" ;
 
# This list is for lahka compounds written with two single words

LIST LAHKA-ADJ = "boaris" "dálá" "dáláš" "gustojeaddji" "gustovaš" "našunála" "ovdalaš" "sorjjasmeahttun" ("suodjalit" der_passl prfprc) ;

LIST LAHKA-V = "addit" "áimmahuššat" "árvalit" "ásahit" "čállit" "čuovvulit" "čuovvut" "dohkkehit" "gáibidit" "geatnegahttit" "geavahit" "gieđahallat" "jorgalit" "kriminaliseret" "mearridit" "muhttit" "ovddidit" "ráŋggáštit" "viiddidit" ;

LIST LAHKA-V-PASS = "atnit" "ásahit" "báhkkodit" "báhkkot" "čállit" "čuoldit" "dadjat" "dahkat" "dohkkehit" "duššadit" "eaktudit" "fámuhuhttit" "geatnegahttit" "jorgalit" "jurddahit" "jurddašit" "kriminaliseret" "mearridit" "muddet" "njulget" "oaivvildit" "rievdadit" "ráŋggáštit" ;

# This one works in combination with others, f.in. LAHKA-POST.
LIST LAHKA-NOUN = "§" "almmolašvuohta" "eana#girji" "eanan#girji" "eatnan#girji" "čađaheapmi" "fápmudus" "fápmui#boahtin" "gáibádus" "geatnegasvuohta" "geavaheapmi" "gonagas" "hálddašan#geavat" "juksan#mearri" "kap" "kapihtal" "kapihttal" "konvenšuvdna" "láhka#ásahus" "láhkaovda#bargu" "láigohan#vuoigatvuohta" "mearrádus" "njuolggadus" "nr" "paragráfa" "riekte#áddejupmi" "riekte#gáldu" "riekte#geavat" "riekte#subjeakta" "sáme#konvenšuvdna" "vuoigatvuođa#bargu" "vuoigatvuohta" ;

# This one does it more likely to be "láhka" in combination with f.i. LAHKA-V:
LIST LAHKA-NOUN-SUBJ = "eise#váldi" "guovddášeise#váldi" "stáhta" ;

LIST LAHKAGEN-NOUN = "§" "buohkaid#vuoigatvuohta" "cealkka" ("fápmu" ill) "hápmi" "johtolat#vuoigatvuohta" "kapihtal" "láhka#vuođđu" "ovda#bargu" "rámma" "ráhkkanan#bargu" "ráidu" "sátne#mearkkašupmi" "ulbmil#paragráfa" "vuođđu" "vuođđo#eaktu" "vuolit" "v";

# "vuolit" is an adj. but suit pragmatically to the set.

LIST LAHKA-ASAHUS = "alimus#riekti" "Odeldiggi" "Stuoradiggi" "Stuorradiggi" "stuora#diggi" "stuorra#diggi" "vuolle#riekti" ;

LIST LAHKA-POST = "bokte" "olis" "mielde" "vuođul" ;

SET NOT-LAHKA = N - LAHKA ;

   
LIST GIELDA = "fylkka#gielda" "gielda" "guovddáš#gielda" "hálddašan#gielda" "riddo#gielda" "ruovttu#gielda" "sáme#gielda" "Sáme#gielda" "vuotna#gielda" ;
 
  # We need this set because there is ambiguity between "gielda"+Gen/Acc and "gieldda"+Nom.

LIST GIELDDA = "gieldda" ;

  
# Nominal sets defined according to their semantical properties
# -------------------------------------------------------------

# Here we will write what sets we have and how we divide them.

# Spatial nouns. These nouns behave like postpositions
LIST SPATIALNOUN = "guovlu" "osku" "sadji" "vuođđu" ;
 
# These nouns in essiv get @ADVL:
LIST ESS-ADVL-N = "arvi" "árga" "baika" ("bassi" n) ("báhkka" n) "beaivvádat" "biegga" "bievla" ("buolaš" n) "čuoika" "čuovga"  (".*dálki"r) "dulvi" "mánoheahpi" "muohta" "njáhcu" ("seavdnjat" n) "varra" "veaigi";

# These nouns/adjectives in essiv can get @ADVL:
LIST ESS-PROB-ADVL-N = ("bassi" n) "boaris" ("nuorra" n) ;
 

# Time sets
# - - - - -

LIST MANNU = "ođđa#jage#mánnu" "ođđa#jagi#mánnu" "guovva#mánnu" "njukča#mánnu" "njuvčča#mánnu" "márs#mánnu" "cuoŋo#mánnu" "cuoŋos#mánnu" "cuoŋu#mánnu" "gáranas#mánnu" "miesse#mánnu" "mái#mánnu" "geasse#mánnu" "suoidne#mánnu" "borge#mánnu" "šnjilča#mánnu" "šnjilža#mánnu" "čakča#mánnu" "golggot#mánnu" "skábma#mánnu" "november#mánnu" "ritne#mánnu" "juovla#mánnu" ;

# Duomma:ii

LIST AIGODAT = "áigi" (".*áigodat"r) "álgo#áigi" "bargo#áigi" "soahte#áigi" "soahte#gaska#áigi" ;
 
# Duomma:lea      

LIST VAHKKU-DUR = "beaivi" "jándor" "bodda" "čakča" "čakča#geassi" "čakča#seavdnjat" "čuohte#jahki" "dálvi" "diibmu" "eahket" "eahket#bodda" "geassi" "giđđa" "idja" "iđit" "iđit#bodda" "jahki" "jahke#bealle" "jahke#čuohti" "kaleanddar#jahki" "loahppa#jahki" ("[0-9]*-#lohku"r) "mánnu" "minukta" "njealjádas#jahki" "skuvla#jahki" "tiibma" "vahkko#loahppa" "vahkku" ;
# these are periodes and can be Acc

LIST VAHKKU-TIME = "b" "bievla#jahki" "bivdo#áigi" (".*#beaivi"r) "D-#beaivi" "dienas#jahki" "doaibma#jahki" "eamiálbmot#jahki" "earre#jahki" "gaska#idja" "geardi"  "luome#jahki" "luopmo#jahki" "mihcamárra" "muorje#jahki" "nisson#jahki" "vuoito#jahki" "vuođđo#skuvla#vahkku" ("[0-9]*#-jahki"r) ("[0-9]*-#jahki"r) "[0-9]*-[0-9]*-#jahki"  "[0-9]*-[0-9]*-#lohku" ("[0-9]*-#lohku"r) ("[0-9]*#-lohku"r) ;

 # The quoteless jahki here is since the preprocessor is not fine-tuned
 # yet, it still gives '"1870-" # jahki N Sg Com'. # lets see if "dbm" works
 # Duomma:lea
 
SET VAHKKU = VAHKKU-DUR OR VAHKKU-TIME ;
 
LIST NUM-JAHKI = "jahki" "skuvla#jahki";

    # Years which can be numerated
 
LIST PARTTIME = "čavčča#bealle" ;
	# This set is for finding Gen in expressions like PARTTIME OR TIME Gen.

LIST AIGI = "áigi" (".*#áigi"r) ; 

LIST SP-BEAIVI = "albmái#mannan#beaivi" "bargočoahkkin#beaivi" "beassáš#beaivi" "mánnodat" "vuoss#árga" "disdat" "maŋŋeb#árga" "gaska#vahkku" "duorastat" "bearjadat" "juovla#beaivi" "lávvardat" "lávvordat" "sotna#beaivi" "sábbát" "skille#duorastat" ;

LIST GEN-BEAIVI = "álbmot#beaivi" "árga#beaivi" "bargo#beaivi" "beaivi" "duopmo#beaivi" "riegádan#beaivi" "skuvla#beaivi"  ;
# General-beaivi can have Gen modifier, like "skuvlla árgabeaivi".

SET BEAIVI = SP-BEAIVI OR GEN-BEAIVI ;

 # Duomma:lea

SET TIME = MANNU OR VAHKKU OR BEAIVI OR AIGI ;

  # Do not add AIGODAT, it has some other characteristics in some cases.
  # But fix!!
  # "Sámediggeráđđi   lea áigodagas doallan   5 čoahkkima."
  # Today believed to be obj.
  
SET NOTIME = N - TIME ;

LIST GEASSET = "dálvet" "dálvit" "giđđat" "geasset" ("geassit" adv) "čakčat" ;
 # What is special here?

LIST PAST-MARKER = ("mánná" ess) "dalle" "diibmá" "dolin" "dološ" "dovle" "duvle" "eske" "gieskat" "ikte" ("nuorra" ess) "ovdal" ("ovddit#beaivi" gen) ("vássán#áigi" loc) ("boares#áigi" gen) ;

LIST PRESENT-MARKER = "dál" "ihttin" "odne" "otne" ("boahtte#áigi" loc) ("boahtte#áigi" gen)  ;

SET TIME-MARKER = PAST-MARKER OR PRESENT-MARKER ;

LIST OTHER-TIME-ADV =  "árabuš" "árrat" "easkka" "guhká" ("guhkit" adv) "maŋemustá" "maŋŋel" "maŋŋelaš" "maŋŋeleappos" "maŋŋit" "muhtumin" "ovdal" ;

SET TIME-ADV = TIME-MARKER OR OTHER-TIME-ADV OR GEASSET;

# Amount sets
# - - - - - -
 
LIST VOLUME = "cl" "lihtar" (".*#lihtter"r) "dl" "lihtter" "ml"  ;

LIST WEIGHT = "mg" "kg" "kilo" "kilu" "gilo" "tonna" ;

LIST LENGTH = "čuolda#badji" "dumá" "fierbme#badji" "gaska" "miila" (".*#mehtar"r) (".*#mehter"r) "mehtar" "mehter" "sente" "cm" "tumá" "állan" "salla" ;

LIST TEMPERATURE = "buolaš#ceahkki" "buolaš#gráda" "liegga#ceahkki" "liegga#gráda" ;

LIST AMOUNT = "uhcánaš" "unnánaš" ;

LIST TIME-UNIT = "jahki" "minukta" "sekunda" "vahkku" "mánnu" "diibmu" ;
	# For use for rules hitting "maŋŋel" as Adv instead of Po. Also in MEASURE-set.

SET MEASURE = VOLUME OR WEIGHT OR LENGTH OR AMOUNT OR TEMPERATURE OR TIME-UNIT ;

LIST CURRENCY = "denara" "dollár" "euro" "kruvdnu" "kr" "ru" "rubel" "ruvdno" "ruvdnu" "¢" "€" "$";

SET CURRENCY-GEN = CURRENCY + Gen ;

SET NOT-CURRENCY-GEN = N - CURRENCY-GEN ;
 	

LIST NUMUNIT = "čuohti" "duhát" "miljon" "millijovdna" "milliovdna" "mill" "milj" "miljo" "miljarda" "mrd";

LIST KIND = (".*šládja"r)  ;

LIST COUNTABLE = "oassi" "kapihttal" "paragráfa" ;

LIST NUMMAR = "identifiseren#nummar" "njuolggotlf" "nr" "nummar" "nummir" "tabealla#nummar" "Vuorkááššenr" ;

LIST KLASS = "ášši" "bálká#ceahkki" "čuokkis" "s" "siidu" "§" "§§" "paragráfa" "oassi" "kap" "kapihttal" "kapihtal";

LIST PEOPLE-NUM = "guovttis" "golmmas" "njealjis" "viđas" "guđas" "čiežas" "gávccis" "ovccis" "logis" ;

# Nouns with morpho-syntactic preferences
# ----------------------------------------

# Numerus
# - - - -

LIST PL-NOUN = "beaivvaščálbme#láse" "beassaš" "biddu" "čalbme#láse" "čázet" "fáhcca" "gállot" "gálssot" "gáma" "gistta" "goikket" "gumme#stevvel" "heajat" "hellodat" "juovla" "mális" "nagir" "njeallje#juvllat" "njuorjjot" "nuhtat" "nuvttat" "nuvttot" "sabet" "sáppat" "sisttet" "skárri" "skuovva" "stevvel" "suohkku" "suorbma#fáhcca" "suorpmat" "ullo#fáhcca" "ullo#suohkku" "vuotta" ("[0-9]*#-jahki"r) ("[0-9]*-[0-9]*-#jahki"r) ("[0-9]*-#jahki"r) ;
 
 # Nominals that appear with plural numerals.
 
LIST SG-WORD = ("addit" Der_upmi) "almmolašvuohta" "anistupmi" "arvi" "álgu" "áŋgirvuohta" "ávvu" "ballu" "bealli" "boazo#doallu" "borakeahttáivuohta" ("buorre#dáhtolaš" Der_vuohta) "doaivu" "dáro#giella" "Finnmárkku#láhka" "fuolalašvuohta" "gaskka#muddu" "gávvilvuohta" ("geargat" Der_vuohta) "geavaheapmi" "gelbbolašvuohta" "giella#geavaheapmi" "giella#politihkka" ("giitevaš" Der_vuohta) ("gudnejahttit" Actio) "fápmu"  ("guovtte#gielalaš" Der_vuohta) "hearvásvuohta" "illu" "ipmárdus" "isitvuohta" ("juotna" Der_laš Der_vuohta) "kultur#duogáš" "kultur#gelbbolašvuohta" "loahppa" ("máŋgga#bealat" Der_vuohta) "mielki" "miella" "moraš" "muohta" "musihkka" "oame#dovdu" "olahahttivuohta" "ovddas#vástádus" "ovttas#bargu" "ovtta#dássásašvuohta" "politihkka" "ráffi" "ráfi" "ráhkisvuohta" "riska" "roahkkatvuohta" "sáme#giella" "sámegiel#máhttu" "sáme#kultuvra" "unnit#logu#politihkka" "ustitvuohta" ("vanhurskkis" Der_vuohta) "vásáhus#duogáš" ("veahka#válddálaš" Der_vuohta) ("vuordnut" Actio)   ;

# Words that are used in singular unless their plurality is stressed by words such as "goappeš", "goappašat", "earálágan", "máŋgalágan" or Num or Ord.

# Case, possessive, etc.
# - - - - - - - - - - - 

LIST LOC-NOUN = (".*dilálašvuohta"r) "dáhpáhus" "ipmárdus"  ;

  # Those nouns appear in locative unless a head asks for comitative.
  
LIST VUOHKI = (".*#vuohki"r) "vuohki" ;
# Usually in comitative, see rule
  
LIST N-NOPXLIST = "atnu" "almmolašvuohta" "áibmu" "áige#mearri" "áigi" "álbmot#jienasteapmi" "álgo#álgu" "álgo#stávval" "álgo#vuorru" "álgu" "álki" ("árvidit" actio) "bargo#áigi" "báhkka" ("beaivádit" actio)  "beaivi" "bievla#jahki" "boahtte#áigi" "boahtu"  "boazo#doallu" "bora#spire" "cealkka"  "čáppa#girjjálašvuohta" "čiegus" "čiehča" "dievas#čoahkkin" "dilli"  "divre#giksi"  "dolla#gáddi" "dološ" "eahket" "Finnmárkku#opmodat" "geatnegas" "geavat" "gaskka#muddo" "gárvi" "genitiiva#hápmi" "giella#geavaheapmi" "girko#siida"  "hálddašan#guovlu" "jahki" "jođán" "joh#gáddi" "johtu" "kilo" "láhka" "leans#mánne#árvvošteapmi" "loahppa" "logaheapmi" "lohku" "lohpi" "luondu" "maŋŋi" "máŋggaid#lohku" "meallu"  ("meannudit" actio) "miella#dearvvašvuođa#dikšu" "nuoraid#skuvla#dássi" "nuppádas" "nuppát" ("oahpahit" actio) "ođas" "ođđa#jahki" "oktavuohta" "olle" "olmmoš" "ortnet" "ovtta#oaivil" "ovttaid#lohku"  "predikatiiva" "ráfi" "rávásman#ahki"  "riekte#geavat" "riikka#arkivára" "sápmelaš" "sis#riika" "sivva" "Skjerstad#-ášši" "smávva#skuvla#dássi" "soaittáhat" "stáhta#ráđđi" "unnit#logu#giella" "vahkku" "valljodat" "viiddis" "viso" "vuokta" ("[0-9]*#-lohku"r) ;

 # Nominals that probably do not have a Px ('1600-logus').

SET N-NOPX = N-NOPXLIST OR LAHKA ;

LIST N-PX = "áhčči" "bárdni" "biigá" "boadnji" "eadni" "eammi" "gáibmi" "guoibmi" "hearrá" "nieida" "oabbá" "olmmái" "ráhkis" "reaŋga" "skibir" "skihpár" "ustit" "viellja" ;

 # Nominals that well may have a Px. 

LIST ALU = ("allu" gen)("assu" gen)("čiekŋu" gen)("gassu" gen)("govdu" gen)
	  ("guhkku" Gen)("lossu" Gen)("stuorru" Gen)("viidu" Gen);

	  # Those are words that only appear in one form, which Nickel calls A/G.
    # They are only in a predicative position.

LIST REAL-TITLE = ("gásttašit" der_eaddji) "justitiarius" "majestehta" "prof" "cand.mag" "cand.oecon" "cand.philol" "cand.real" "cand.scient" "cand.theol" "cand"  "dr.art" "eksp.hoavd" "eksp.sj" "fenr" "fig" "fil.tri" "gen.lt" "genr" "genr.lt" "h.r.adv" "hr" "kapt" "korp" "lekt" "lic" "ltn" "mag.art" "mag" "majestehta" "merc" "Miss" "Miss" "Mr" "mrs" "odont" "oecon" "ordf" "ossod.dir" "stud.phil." "res.kap" "stud.philol" "vit.ass" "dr" "dr.med" "dr.philos" "dr.theol" ;
 
LIST TITLE-LIKE = "ránnjá" ;
# Ránnjá Ole Vuolab imašta manne ....

# Nouns as pred
# - - - - - - - - - -

# subcategorizing for a particular case

LIST LOC-COMPL-NOUN = "ávki" "árvalus" "dovdu" "ipmárdus" "ovda#mearka" "sáhka" ;

  # Nouns that take a locative
  # There is also an idiomatic use of "ovda#mearka" in the constructions "ovdamearkka dihte" and "ovdamearka" (Ess).
  

LIST COM-COMPL-NOUN = "bargu" "čoahkkin" "gaskavuohta" "lihkku" ("oktavuohta" nom) ("oktavuohta" acc) "ovtta#oaivil" "ovttasbargo#čoahkkin" "ovttas#bargu" "ovttas#bargo#šiehtadus" "šiehtadus" ;

SET LOC-HEAD = LOCV OR LOC-COMPL-NOUN ;

SET COM-HEAD = COMV OR OKTII-V OR COM-COMPL-NOUN ;

  
LIST PREGEN = "álgogeahčen" "bealle#muttus" "bealle#muddu" ("bealli" n sg loc) "gaska#muddu" "gaskka#muddu" ("gaskavuohta" n sg loc) "loahpageahčen" ("miella" n sg loc) "oktavuohta" "ovttas#bargu" ;

 # Nouns and adjectives that take a preceding genitive.
 
    
  
# Set hierarchy
# -------------

# this part is aiming at an overall semantic categorization of nouns
# the sets before might be aiming at a solution of particular syntactic or lexical problems (even those sets of course also aim at the solution of ambiguities :) )

# the 1. level distinguishes between abstract an concrete
# at the 2. level the feature concrete splits up into animate and not-animate

# We start with CONCRETE, anyway we have to start at the bottom, so that the individual lists (containing items from the lexicon) are defined before we use them in sets (containing list names)

# Conceptual Hierarchy
# ====================
# minor caps : structure elements not sets
# caps : sets

#                                          concrete
#                           /                                    \
#                       /                                             \
#                   /                                                     \
#              ANIMATE                                               not-animate
#        /               \                                       /                   \
#    HUMAN*          not-human (ANIMAL)                        thing**              place***
#                     /    /   /          \  \                 /                     /
#           HUNT-ANIMAL BOAZU FISH GEN-ANIMAL BIRD      ORGANIZATION INSTITUTION    ABSTR-INSTITUTION
#
#                  
#                     
#=================================================================================================================================
#
#                                                 HUMAN*
#                                            /                 \
#                                         one                more than one (HUMAN-GROUP) 
#                                   /                \                  
#                        explicit reference/family     through role
#                             /                       /    \       \
#
#                HUMAN-INDIVIDUAL          PROFESSION     HUM-FUNCTION     OFFICE
#        /           /           \
#
#FAMILY FAMILY-ALSO-ABSTRACT       NON-FAMILY
#
#=================================================================================================================================
#
#                                                        thing**
#                                        /                                    \
#                                   /                                             \
#                                /                                                     \
#                                                                                      
#                        prototypical-tool (TOOL)                                    OBJECT
#                       /                               \                             /                               \  
#                concrete tool                       ABSTR-TOOL                   object                           place-potential           
#   /        /           /       \            \                      /       /       /     \     \    \          /   /       \       \          \
#TOOL FISHING-TOOL KITCHEN-TOOL WORKING-TOOL WRITING-TOOL       FURNITURE SHOE BEDCLOTHES FOOD PLANT PLANT-PART    BODY   ABSTR-TEXT  CONTAINER VEHICLE
#                                                                                                                                                /           \
#                                                                                                                                         SMALL-VEHICLE SPACIOUS-VEHICLE  
#=================================================================================================================================
#
#                                                        place*** 
#                                           /                                    \
#                                       /                                             \
#                                   /                                                     \
#                                                                                 
#                            static                                                              directive (ROUTE) 
#                        /                        \                                            /                  \    
#                human-made                      natural/defined                          CONCRETE-ROUTE          ABSTR-ROUTE
#    /       /           \                       /                   \          \         
#BUILDING   ROOM   GOAHTI-PLACE   actor (POLITICAL-PLACE)     GENERAL-PLACE    natural                              
#                                  /      /           \                       /       \
#                           GIELDA   NATION    GEN-POLITICAL-PLACE        WATER   GEOGRAPHICAL-PLACE 
#                                    /       \                                       /           \
#                                NORGA  NATION-NOT-NORGA                        NATURE-PLACE SETTLEMENT-PLACE                               
#
#=================================================================================================================================

# Possessor hierarchy
#                          +            P  o  s  s  e  s  s  e  d		    |
# Possible possessors      +  FAMILY    FAMILY-ALSO-ABSTRACT    NON-FAMILY  + 
# ------------------------ +  --------    -----------------   ------------  |
# Prop Plc                 +                      x               x		    |
# HUMAN-INDIVIDUAL         +      x               x               x		    |
# FAMILY pronouns	       + 									   		    |
# HUMAN-GROUP              +                                      x		    |
# PROFESSION               +      x               x               x		    |
# OFFICE                   +      x               x               x		    |
# HUM-FUNCTION             +      x               x               x		    |
# ABSTR-TEXT               +      x               x               x		    |
# PLACE (not NATURE-PLACE) +                      x               x		    |
# NATION                   +                      x               x		    |
# ANIMAL                   +                      x			   			    |
# EDUCATION                +                      x               x		    |
# ORGANIZATION             +                      x               x         |
# INSTITUTION              +                      x               x		    |
# INDUSTRY                 +                                      x		    |

LIST FAMILY-ONLY-HUMAN = (np ant) (np sem_sur) "áddjut" "áhkká" "áhkkut" "bárdne#mánná" "boadnji" "čeahci" "čeahcit" "dálu#eamit" "eahki" "eamit" "eammi" "eanu" "goaski" "guoibmi" "isit" "lunta" "mánáid#mánná" "mannji" "máttar#áddjá" "máttar#áhkku" "muoŧŧa" "muoŧŧal" "náittos#guoibmi" "neahpi" "oabbá" "oabbá#bealli" "oambealli" "oappáš" "oarpmealli" "osku#guoibmi" "rist#vánhen" "siessal" "siessá" "vieljaš" "viellja" "viellja#bealli" "vilbealli" "vuohppa" "vuon#áhkku" "vuoni" ;
# These can only be possessed by HUMAN-INDIVIDUAL, HUMAN-GROUP, PROFESSION, OFFICE, HUM-FUNCTION, ABSTR-TEXT

LIST FAMILY-ALSO-ABSTRACT = "áhčči" "áddjá" "áhkku" "bearaš" "eadni" "oapmahaš" "sohka" "sohka#goddi" "váhnen" "veahka" ;
# These can be possessed by HUMAN-INDIVIDUAL, HUMAN-GROUP, PROFESSION, OFFICE, HUM-FUNCTION, ABSTR-TEXT, PLACE (minus NATURE-PLACE), Prop Plc, NATION, ANIMAL, EDUCATION, ORGANIZATION and INSTITUTION. Can also be used as metaphors.

SET FAMILY = FAMILY-ONLY-HUMAN OR FAMILY-ALSO-ABSTRACT ;

LIST NON-FAMILY = "almmái#olmmoš" "álbmot#guoibmi" "ámmát#olmmoš" "bálvalan#guoibmi" "bárdni" "bártnáš" "dievdo#olmmoš" "eaŋkil#olmmoš" "gánda" "guossi" "kránnjá" "lagamuš" "mánná" "mánáš" "nieida" "nieiddaš" "nisson" "nisson#olmmoš" "nisu" "Norgga#-ustit" "nuorra" "olles#olmmoš" "osku#guoibmi" "osku#viellja" "olmmái" "olmmoš" "ránnjá" "rávis#olmmoš" "sáme#mánná" "sáme#nisson" "sáme#nisu" "sáme#nuorra" "siida#guoibmi" "siida#guoibme#nisu" "skibir" "skihpár" "smávva#gánda" "ustit" "verdde" "viissis" ;
# These can be possessed by HUMAN-INDIVIDUAL, HUMAN-GROUP, PROFESSION, OFFICE, HUM-FUNCTION, ABSTR-TEXT, EDUCATION, PLACE (minus NATURE-PLACE), Prop Plc, NATION, EDUCATION, ORGANIZATION, INSTITUTION and INDUSTRY.

LIST HUMAN-LIKE = "beahtu" "beargalat" "eŋgel" "háldi" "hearrá" "ipmil" "stállu" "suodjalus#eŋgel" "ulda" ;

SET HUMAN-INDIVIDUAL = HUMAN-LIKE OR FAMILY OR NON-FAMILY ;

LIST HUMAN-GROUP =  "almennet" "almmolašvuohta" "álbmot" (".*#álbmot"r) (".*bearaš"r) (".*čearda"r) "delegašuvdna" "gázzi" "gili#almennet" (".*#guovttis"r) (".*#guovttos"r) (".*joavku"r) (".*kommišuvdna"r) (".*komiteá"r) "ráidu" "ráđđi" ("sápmi" n pl) "stáhta#almennet" "unnit#lohku" (".*veahka"r) ;
  ## group of humans that connot be a building at the same time
   # Duomma:lea 
 
LIST PROFESSION = (".*advokahta"r) (".*duopmár"r) "arkeologa" (".*artista"r) (".*assisteanta"r) (".*áittardeaddji"r) "ákšo#álmmái" (".*bargi"r) "ámmát#olmmái" "ámmát#olmmoš" (".*#mánni"r) (".*hoavda"r) (".*meannudeaddji"r) (".*#geahčči"r) (".*bagadalli"r) (".*bagadeaddji"r) (".*konsuleanta"r) "bargo#veahka" "bassaleaddji" "bassi" "báhkkár" "báhppa" "bálvaleaddji" (".*čálli"r) ("bearre#mánnat" actor) "bibliotekára" (".*biigá"r) "biila#divvu" (".*#vuovdi"r) "birasgáhttenráđđe#addi" (".*terapevta"r)  (".*terapeuta"r) "bisma" "bismá" "bispa" (".*bivdi"r) (".*hábmejeaddji"r) "boanda" "boazo#doalli" "boazo#sápmelaš" "boazo#sápmi" "boles#meašttir" (".*#vuoddji"r) "buvttadeaddji" "čalbme#áhkku" "čalbme#eadni" "čála#oahppavaš" "čiekči" "čorgejeaddji" (".*čuojaheaddji"r) "dáidár" "dáiddár" "dálon" "dálu#eamit" "dálu#isit" "dárkkisteaddji" "davvi#sápmi" (".*dikšu"r) (".*direktevra"r) (".*dirigeanta"r) (".*divššár"r) (".*doaimmaheaddji"r) (".*doavttir"r) "dulka" ("duodje#oahpahallat" actor) "duojár" (".*duopmar"r) (".*dutki"r) "ealáhus#doalli" "eallo#doalli" "eanan#doalli" "eanan#hearrá" (".*sadjásaš"r) "eatnan#doalli" "fáldi" "fitnodat#doaibmi" "fitnodat#oamasteaddji" "gávpejas" "giella#ráđđi" (".*veahkki"r) "girdi" "girko#bálvaleaddji" "girko#dulka" "golle#rávdi" "gonagas" "govva#dáidár" "govva#dáiddár" "govvedeaddji" "govvejeaddji" "guođoheaddji" "guolásteaddji" "hárjeheaddji" (".*teknihkar"r) (".*jođiheaddji"r) "johtti#sápmi" "johtti#sápmelaš" (".*journalista"r) "keaisár" "kirurga" "koahkka" "korefereanta" "kursa#oahppi" "lágideaddji" "láibu" "lávlu" "leanut" "logopeda" "luhkkár" "máilmme#meašttir" "máhttájeaddji" "mátta#sápmi" "mearra#almmái" "mearra#olmmái" "mearra#sápmi" "mišuneara" "museá#bargi" "musihkka#dahkki" "musihkkár" "návet#vázzi" "neavttár" "njunuš#jurista" "noaidi" "oahpahalli" (".*oahpaheaddji"r) "oahppi" "oaivadeaddji" "oaivámuš" "ođas#hoavda" "ođas#lohkki" "ossodat#direktevra" "ossodat#direktøra" "parkeren#fákta" "pedagoga" "plánejeaddji" "poliisa" "politiija" "prentejeaddji" "profehta" "professor" "rádje#fákta" "rádje#soalddat" "ráđđe#addi" "ráđđe#olmmái" "rávdi" "reaŋga" "redaktevra" "rehketdoallo#dárkkisteaddji"  "rehket#doalli" "rektor" "ruhttejeaddji" "ruvdna#prinsa" "ruvvejeaddji" "sáme#dikke#ráđđi" "sáme#duojár" "sárdnideaddji" "sávza#doalli" "sealge#eadni" "sester" "silba#rávdi" "snihkkár" "soalddat" "sosionoma" "spábbačiekčan#hárjeheaddji" "spábba#čiekči" "stipendiáhta" "studeanta" "sundi" "suohkan#báhppa" "suohkan#plánejeaddji" "šibit#doalli"  "telefon#vástideaddji" "tuollár" "turista#ofelaš" "uksa#fákta" "universitehta#lektor" "váldo#doaimmaheaddji" "viesso#hoiddár"  "vuokta#čuohppi";

 # Duomma:lea 

LIST OFFICE = "áirras" "ámta#mánni" "bajit#báhppa" "bearaš#minister"  "biebmo#ministtar"  "birasgáhtten#ministtar" "boazodoallo#hoavda" "dearvvašvuođa#ministtar" "dekana" "eanadoallo#minister" "farao" "fylkka#ráđđi" "gieldda#minister" "guolástus#minister" "justis#ministtar" "kultur#minister" "leans#mánni" "ministtar" "nisson#áirras" "politihkar" "politihkkár" "sága#doalli" "Sáme#demokráhtta" "sámedikke#áirras" "Sámedigge#presideanta" "sámedigge#presideanta" "sátne#jođiheaddji" "sosiála#ministtar" "stáhta#ministtar" "stivra#lahttu" "suodjalus#minister" "ovda#olmmoš" "presideanta" "stáhta#ráđđi" "várre#presideanta" ;

SET TITLE = REAL-TITLE OR TITLE-LIKE OR PROFESSION OR OFFICE ; 

LIST HUM-FUNCTION =  "Bergen#-soalddát" "kandidáhtta" "kandidáhta" "nomáda" "oahppan#olmmoš" "oktavuođa#olmmoš" "olbmo#bárdni" "pasienta" "ráđđe#almmái" "riika#vuloš" "sáme#demokráhtta" "skohter#vuoddji" "soahte#olmmái" "stáhta#boargár" ("suddu" der_laš) "turista" "virge#guoibmi" "virge#olmmoš" "vuoras#olmmoš";
 #XXX bad name
 # Don´t add veahkki + Ess.
 
LIST HUM-ATTR =  "bassi" "divššohas" "eanan#eaiggát" "eaiggát" "eatnigiel#hálli" "fásta#ássi"  "gáktehas" "informánta"  "lestadiánalaš" "sáme#gielat" ("suddu" der_laš) ;
    # adjectival

LIST HUM-VERB = "ássi" "boaris" "bálvaleaddji" "bálvalan#guoibmi" "boazo#eaiggát" "dállo#doalli" "eanan#eaiggát" "geavaheaddji" "gili#ássi" "muitaleaddji" "ovttas#ássi" "riikka#ássi"  "vuotna#ássi" "vuoste#belle" "vuoste#bealli";
    # vearbal

LIST NATIONAL-IDENTITY-NOT-SAPMI = "badje#sápmelaš" "dáčča" "dánskalaš" "duiskkalaš" "Enodat#sápmelaš" "Guovda#geain#sápmelaš" "guovdageaidnolaš" "hollándalaš" "indiána" "israellaš" "judálaš" "juvddálaš" "julev#sápmelaš" "lulli#sápmelaš" "Maya#-indiána" "njávdán#sápmelaš" "nuortalaš" "oarje#sápmelaš" "olgo#riikkalaš" "palestinalaš" "romalaš" "romer" "ruota#suopmelaš" "Ruošša-#sápmelaš" "samarialaš" "sis#eatnan#sápmelaš" "Suonjil#sápmelaš" "Várjjat#sápmelaš" "vuotna#sápmelaš" ;

     # Also regional identity 
 # Duomma:lea
      
LIST SUOPMA = "Davvi-ruoŧŧa" "Davvi-suopma" "Lulli-ruoŧŧa" "Lulli-suopma" "Mátta-ruoŧŧa" "Mátta-suopma" "Oarje-ruoŧŧa" "Oarje-suopma" "ruošša" "Ruošša" "ruoŧŧa" "Ruoŧŧa" "suopma" "Suopma" ;
     
# This set is used in Gen/Acc-rules.
     
LIST SAPMI = "davvi#sápmi" "julev#sápmi" "lulli#sápmi" "mátta#sápmi" "mearra#sápmi" "nuorta#sápmi" "oarje#sápmi" "sápmi" "Sápmi" ;
      
# This set is used in Gen/Acc-rules.
 # Duomma:lea

SET NATIONAL-IDENTITY = NATIONAL-IDENTITY-NOT-SAPMI OR SAPMI ;

SET HUMAN = HUMAN-INDIVIDUAL OR HUMAN-GROUP OR PROFESSION OR HUM-FUNCTION OR HUM-ATTR OR HUM-VERB OR OFFICE OR NATIONAL-IDENTITY ;

SET NOT-HUMAN = N - HUMAN ; 

# Animals

LIST GEN-ANIMAL = "ábe#gáhttu" "ásen" "beana" "bohkká" "bussá" "čeavrris" "ciiku" "čivga" "dámmá" "ealit" "fuođđu" "gáhttu" "gáica" "gálbi" "gihcci" "guigu" "gussa" "heasta" "horti" "láppis" "loddi" "máhtu" "njiŋŋálas" "ore" "sávza" "sávza#beana" "smávva#fuođđu" "spiinne#čivga" "spiidni" "vársá" "vársi" "vielppis" "vierca" "vuoksá" "vuoncá#varis" "vuonccis" ;

LIST HUNT-ANIMAL = "ealga" "rievssat" ;

LIST BOAZU = "áldu" "boazu" "čearpmat" "čora" "eallu" "heargi" "miessi" "sarvvis" "vierro#boazu" "vuonjal" ;

LIST FISH = "bálddis" "čuska" "dápmot" "diddi" "diksu" "dorske#guolli" "dorski" "duovvi" "gilot" "guolli" "hávga" "juksu" "luos#juolgi" "luossa" "luossa#guolli" "luossa#nálli" "muortu" "sallit" "sáidi" "sáiva#guolli" "šákša#dorski" "stábbasáidi" "stáinnir" "stuora#sáidi" "rutnot" "veajet" ;

LIST ANIMAL-GROUP = "čora" "eallu" "hearge#ráidu" ;

SET ANIMAL = GEN-ANIMAL OR HUNT-ANIMAL OR BOAZU OR FISH ;

LIST BIRD = "ákta" "báiski" "bovttáš" "cagan" "čearret" "gádde#loddi" "gáiru" "meara#loddi" "skávli" "skuolfi" "šuoršu"  "albatrossa" "alit#bađuš" "alit#gaccet" "alit#oai#gaccet" "bakku" "baste#suorsi" "bađoš#gaccet" "beahce#báhcat#loddi" "beahce#loddi" "bealdo#cihci" "bealdo#garjá" "bealdo#vuorra" "bealge#loddi" "beallje#loađgu" "beallje#rásttis" "bearal#skuolfi" "beaste#rages" "beibboš" "beibboš#cihci" "beibboš#cizáš" "belddoš#vizar" "beškkoš" "beštor" "biegga#fálli" "biehkan" "bigán" "bihcabas#čáihni" "bihcebas#gáski" "bihcebas#čáihni" "bisse#hávka" "bižus" "boaimmáš" "boallo#njukča" "boađđo#civkkán" "borjjastit" "borse#njunni" "bovttáš" "bulddogas" "bumbá" "buoide#gaccet" "buokčat" "buokči" "bupmálaš" "bursa#njunni" "bussá#skuolfi" "buvvedat" "báiski" "bákte#duvvá" "bárbmo#fálli" "bávgoš" "cagan" "cagán" "cielláš" "cihce#skuolfi" "cihrre#lasta#vizar" "civka#leivvoš" "cizaš#fálli" "cizopaš" "cizot" "davve#lasta#vizar" "davve#loddi" "davve#vizar" "deagga#čáihni" "deagge#báiski" "deagge#cihci" "dearbme#rásttis" "derpmoš" "dieldá" "dielko#duvvá" "dihtti" "dikso#báhppa" "dirre#lihká" "doadjo#suorsi" "dokta" "dovtta" "duoršu" "duottar#bižus" "duottar#civka#leivvoš" "duvvá" "duvvá#rásttis" "dálve#beštor" "dálve#ruoivil" "dálvi" "dáža#boaimmáš" "dáža#suorsi" "fasána" "fiehta" "fiervá#vierru" "fiervá#viroš" "fiskes#beštor" "fiskes#cihci" "fiskes#cižáš" "fiskes#gaccet" "fiskes#jievžžan" "fiskes#njun#gáhkkor" "fiskes#vizar" "fiŋka" "gaccepaš" "gaccet" "gahper#báiski" "gahper#vizar" "garjá" "gassa#njunni" "gazza#loddi" "gazze#biehtár" "geađge#jorgu" "geađge#rásttis" "giega#biigá" "giehka" "giehpa#vuonccis" "giella#vealgu" "gierdo#duvvá" "gierdo#rásttis" "gierdo#suorsi" "gierdo#čuonjá" "gierra" "giljobaš" "gilljobaš" "gilva#beštor" "girje#báhcat#loddi" "girje#livkkár" "giron" "goahcce#loddi" "goahppil" "goahppil#gálli" "goahte#goljaš" "goalsi" "goalso#ruoššehas" "goalšo#vizar" "goarga" "goarga#loddi" "goargŋo#haŋŋá" "goaski" "goaskin" "gollaš" "golle#beibboš" "golle#cihci" "golle#gahpir" "golli" "golláš" "gorges#hávda" "gorges#lihkká" "govu#skuolfi" "gođa#loddi" "gožu#vuoražas" "guoik#gáhrit" "guoik#gárri" "guoksa" "guolbba#vierru" "guolbba#viroš" "guolbba#čoavžžu" "guolle#fálli" "guolle#čearret" "guorga" "guossa#báhcat#loddi" "guossa#gaccet" "guossa#ruossa#njunni" "guossa#vizar" "guovssat" "guovsso#loddi" "gussa#goalsi" "guškil#vierru" "guškil#viroš" "guškkástat" "gádde#buvvet" "gádde#skirvi" "gádde#vierru" "gádde#viroš" "gáhkkor" "gáiru" "gállat" "gálli" "gállit" "gáranas" "gáranas#loddi" "gárggo#goalsi" "gárgo#goalsi" "gávla#čuonjá" "hálka#loddi" "haŋŋá" "hearta#vizar" "hoašša#cihci" "hurrat" "hurri" "hurri#goahppil" "hurri#čukčá" "háigir" "háigir#loddi" "hálka" "hálka#gonagas" "hálka#čielkkis" "háskil" "hávda" "idja#skuolfi" "jeagge#fálli" "jeagge#meahkástat" "jeagge#čoavžžu" "jeaggehávut" "kanária#loddi" "keaisár#pingviidna" "jiekŋa#čielkkis" "jiesmi" "jievja#skuolfi" "jievže#loddi" "jávre#sopmir" "leahtto#fálli" "leahtto#spálfu" "leaibe#loddi" "leivvoš" "lidnu" "liidn-elláš" "liin-elláš" "litnut" "livkkár" "loađgu" "loddi" "lodde#gonagas" "lodde#jievži" "luhkka#loddi" "láfol" "láhto#spálfu" "látte#guoksa" "látte#guovssat" "látto#vuonccis" "láŋgá" "meahkástat" "mearra#goaski" "mearra#goaskin" "mearra#gáiru" "mearra#čuonji" "mearra#čuonjá" "mielle#spálfu" "miestta#cihci" "miestta#rásttis" "miestta#vizar" "miestta#šurre#vizar" "molde#cizáš" "muhkke#cizáš" "muogir" "muorra#civkkán" "muorra#gakcu" "mákrealla#čearret" "niehtte#garjá" "niito#civkkán" "njukča" "njurggu" "njurgut" "noaide#loddi" "nuorta#cihci" "nuorta#lasta#vizar" "nuorti" "náhkke#soadjá" "oanehis#njun#čuonjá" "paradiisa#loddi" "pelikan#loddi" "pingviidna" "ribe#skáiti" "riddo#civka#leivvoš" "riddo#vierru" "riddo#viroš" "rievssat" "rievssat#cižáš" "rievssat#fálli" "roavgo#gonagas" "rohto#gaccet" "rohto#vizar" "rohto#čoavžu" "rohto#čoavžžu" "rukses#bađoš" "rukses#beibboš" "rukses#civka#leivvoš" "rukses#fiehta" "rukses#guškil" "rukses#juol#čoavžžu" "rukses#ruivil" "rukses#ruoivil" "rukses#rásttis" "rukses#soadjá" "rukses#suorre#hávut" "ruoivil" "ruoná#beibboš" "ruoná#cihci" "ruoná#cizáš" "ruoná#juol#čoavžžu" "ruoná#čáihni" "ruossalas#njunni" "ruovddagas" "ruovde#cihci" "ruovde#cizáš" "ruođa" "ruošša#boaimmáš" "ruošša#skire" "ruošša#skirri" "ruošša#állat" "ránes#cihci" "ránes#cizáš" "ránes#háigir" "ránes#livkkár" "ránes#rásttis" "ránes#skuolfi" "ránes#skávli" "ránes#snárttal" "ránes#čuonjá" "ránes#čáihni" "rásttis" "rávgoš" "sallet#gáiru" "sallit#gáiru" "sealle#cižáš" "siesse#mohkki" "sieđga#civkkán" "silde#gáiru" "silke#buokča" "sitron#beštor" "skierru" "skilke#skálka" "skire" "skirri" "skiŋge#gaccet" "skoarra" "skuolfi" "skutnja#loddi" "skáhpe#loddi" "skáiti" "skárfa" "skárfa#čielkkis" "skávli" "snárttal" "soadja#njálla" "sopmir" "spoađđo#duoršu" "spálfu" "stoarbma#loddi" "stoarbma#spálfu" "stohkke#gaccet" "stohkke#rievdu" "stohkke#spálfu" "stohpo#háigir" "stohpo#spálfu" "struhcca" "struhcca#loddi" "stuorra#fiehta" "stuorra#giljobaš" "stuorra#guškil" "stuorra#guškkástat" "stuorra#meahkástat" "stuorra#skáiti" "stuorra#skávli" "stuorra#vuodja" "stuorra#vuojaš" "stuorra#čarkkus" "stuorra#čoavžu" "stuorra#čoavžžu" "stuorra#čuonjá" "stálo#beibboš" "stárra" "suoidne#suorsi" "suoidne#čiksa" "suola#skáiti" "suorre#spálfu" "suorsi" "suotnjo#liráš" "suotnjo#čoavžžu" "suovka#cihci" "suvlá" "sáhco#meahkástat" "sáhpán#boaimmáš" "sáhpán#skuolfi" "sáiva#hávda" "sávja#hávda" "sávza#loddi" "toardna#garjá" "toardna#gájon" "uhca#buokča" "uhca#buvvedat" "uhca#báiski" "uhca#ciellá" "uhca#cihci" "uhca#meahkástat" "uhca#njukča" "uhca#saddi" "uhca#vierru" "uhca#viroš" "uhca#čoavžžu" "uhca#čáihni" "ummol#cizáš" "upmol#cizáš" "unduláhtta" "uvlo#hávut" "varra#loddi" "veastareaddji" "viglá#čoavžžu" "vilges#nier#čuonjá" "vilges#soadja#skávli" "vilges#ummol#cizáš" "vilges#vierru" "vilges#viroš" "vilges#čoavžu" "vilges#čoavžžu" "vilgessealčáihni" "vintán" "vuoncá#čivga" "vuoncá#varis" "vizardit" "vuodja" "vuojaš" "vuokta#fiehta" "vuokta#gaccet" "vuokta#goalsi" "vuokta#láfol" "vuokta#skárfa" "vuonccis" "vuonccis#loddi" "vuoražas" "vuorččis" "vuovda#duvvá" "vuovde#civka#leivvoš" "vuovde#gaccet" "vuovde#loddi" "vuovde#meahkástat" "vuovde#rásttis" "vuovde#vizar" "vuovde#vuorččis" "vuovde#čoavžu" "vuovde#čoavžžu" "ábi#rievssat" "áhpe#dokta" "áhpe#dovtta" "áhpe#háskil" "áhpe#hávda" "áhpe#lihkká" "áhpe#spálfu" "ákta" "állat" "čarkkus" "čearret" "čiekčá" "čielkkis" "čiergges#rásttis" "čiksa" "čoađgi" "čukčá" "čuohte#gielas" "čuohte#giella" "čuonji" "čuonjá" "čuonjá#fálli" "čáhce#bávgoš" "čáhce#vuonccis" "čáhppes#bađoš#guškil" "čáhppes#buokča" "čáhppes#seal#beštor" "čáhppes#gaccet" "čáhppes#rásttis" "čáhppes#čoavji" "čáhppes#čoavžu" "čáhppes#čoavžžu" "čáihne#cizáš" "čáihne#gaccet" "čáihni" "šilljo#cihci" ;

#LIST ANIMAL-PLANT =
    # Plants that are rather animals (lingustically)

SET ANIMATE = HUMAN OR ANIMAL ;
 

# Things

LIST TOOL = "áibmi" "ákšu" "bargo#bierggas" "baste" "baste#vuogga" "báddi" "bádden#rusttet" "beana" "bieggamillo#rusttet" "bierggas" "bissu" "bivttas" "boazonjuovvan#niibi" "bohtal" "borramuš" "buiku" "buođđu" "čáhci" "čála" "čuoibmi" "datne#árpu" "dáidda" "dálkkas" "dihtor" "dihtor#mašiidna" "doarta" "dolge#vuogga" "dolla" "dorte" "duodji" "duorgu" "ettet#viidni" "fierbmi" "gádde#nuohtti" "gáidá#nuohtti" "gáffal" "gazirdan#niibi" "giehta" "giehta#mihttu" "giehta#váđđu" "gievdni" "giikan" "goallun#stoahku" "gohppu" "golgadat" "golle#bánno" "gurot#giehta" "hárpa" "HV-#bissu" "jávre#vuogga" "joddu" "joddu-#buođđu" "kohppa" "kruvdnu" "láhkki" "liidna" "liidne#sihkaldat" "luovos#beana" "luossa#vuogga" "luovos#fierbmi" "lyra" "mašiidna" "miehkki" "mihttu" "millo" "millu" "mobil#telefovdna" "mohtor#sahá" "muorje#čoaggi" "muorra#vuogga" "nállu" "niibi" "njuovvan#niibi" "oaggun#stággu" "oaggun#stávra" "olgeš#giehta" "olju" "roahkke#fierbmi" "ruhta" "ruvdnu" "sahá" "sáiti" "sálti" "seaila" "siibma" "sihkaldat" "sirpe" "skárbban" "skierra" "snáldu" "soabbi" "soavvel#vuogga" "speallan#mášiidna" "spihkár" "stággu" "stávra" "stivrran" "suohpan "suorbma" "váđđu" "veahkke#mohtor" "veaike#baste" "vealgi" "viidni" "vuogga" "vuoiddas" "vuoigŋan#mašiidna" ;

   # Those could be further subdivided into: kitchen tools, working tools, hunting tools, fishing tools, writing tools...
  
#LIST FISHING-TOOL = "buođđu" "fierbmi" "gádde#nuohtti" "giehta#váđđu" "goallun#stoahku" "joddu" "joddu-#buođđu" "liidna" "luovos#fierbmi" "vuogga";

#LIST HUNTING-TOOL = "bissu" "HV-#bissu" "njuolla";

#LIST KITCHEN-TOOL = "baste" "gealva" "millo";

#LIST WORKING-TOOL = "ákšu" "goaivu" "mohtor#sahá" "nibi" "sirpe" ;

#LIST COMMUNICATION-TOOL = "mobil#telefovdna" ;

#LIST MACHINE = "bieggamillo#rusttet" "mašiidna" ;

#LIST EATING-TOOL = "gáffal" ;

#LIST MUSIC-INSTRUMENT = "hárpa" "lyra" ;

LIST WRITING-TOOL = "bliánta" "bleahkka" "dihtor" "krihtta" "liánta" "peanna";

#LIST HANDICRAFT-TOOL = "áibmi" "datne#árpu" "nálu" "suorbma#goahti" "vikšamuorra" ;

# preliminary name for the set:
LIST ABSTR-T =  "ášši" "bargobearrái#geahčču" "bargodearvvašvuođa#bálvalus" "bearrái#geahčču" "cummá" "dánsa" "dánsu" "dearvvašvuođa#geahčču" "doarjja" "eallin" "fápmu" "gásta" "geahčču" "gullu" "heagga" "jahke#bargu" "láhka#vuođđudus"  "mearka" "oahppu" "oaidnin#vuohki" "preassa#doarjja" "ruhta#doarjja" "soabadan#proseassa" "sosialiseren#proseassa" "suvli" "varra" ;

LIST SINGLE-SOUND = "fonema" "jietna" "jietnadat" "loahppa#jietnadat" "vokála" ;

    # Can be part of a word
LIST SOUND-SYSTEM = "báson#šuokŋa" "čotta#juoigan" "gohččun" "lávlun#vuohki" "luohti" "musihkka" "riedja" "rohkos" ;

LIST LANGUAGE = "amas#giella" "álgo#giella" "anár#sáme#giella" "anáraš#giella" "Áhkkil#sáme#giella" "áššemeannudan#giella" "bargo#giella"  "b-#giella" "B-#giella" "bihtán#sáme#giella" "Biŧon#sáme#giella" "bihtánsáme#giella" "boares#dáro#giella" "c-#giella" "C-#giella" "čállin#giella" "dáro#giella" "davvi#sáme#giella" "davvi#suopman" "dáčča#giella" "diplomáhta#giella" "dološ#dáro#giella" "duiska#giella" "dutkan#giella" "eaŋgalas#giella" "eatni#giella" "eŋgelas#giella" "EU-#giella" "fága#giella" "fránskka#giella" "gárjil#giella" "giella" "girje#giella" "greikka#giella" "guovddáš#sáme#giella" "hálddahus#giella" "hállan#giella" "heastta#guolga#giella" "hebrea#giella" "hollándda#giella" "hupman#giella" "islándda#giella" "jiddisch" "julev#sáme#giella" "julevsáme#giella" "kvena#giella" "latiinna#giella" "latin#giella" "láhten#giella" "lullisáme#giella" "lulli#sáme#giella" "lyde#giella" "máilmme#giella" "máttaoarje#suopman" "mátta#sáme#giella" "mearra#sáme#giella" "meänkieli" "meisset#giella" "minoritehta#giella" "njenec#giella" "nuortalaš#giella" "nuortasáme#giella" "nubbin#giella" "oahpahus#giella" "oarje#suopman" "oarjel#sáme#giella" "oarjesáme#giella" "ođđa#dáro#giella" "ovdasuoma#giella" "ovdavuođđosuoma#giella" "preussa#giella" "ránskka#giella" "rievssat#giella" "romani" "ruoŧa#giella" "ruošša#giella" "ruošša#dáro#giella" "ruovttu#giella" "sáme#-dáro#giella" "sáme#giella" "sámojeda#giella" "skandináva#giella"  "skoalta#giella" "spánska#giella" "substantiiva#giella" "suoma#giella" "thai#giella" "ubmi#sáme#giella" "Ubmi#sáme#giella" "unnit#logu#giella" "váldo#giella" "veahádat#giella" "verbála#giella" "vieris#giella" "vierro#giella" "vuođđo#dáro#giella" "vuođđo#giella" "vuođđo#sáme#giella" "vuođđo#suoma#giella" "vuosttas#giella" "vuosttaš#giella" ;

SET SOUND = SINGLE-SOUND OR SOUND-SYSTEM OR LANGUAGE ;

LIST SATNI = "adjektiiva" "advearba" "bárahisstávval#vearba" "boazo#sápmelaš#tearbma" "doaba" "kásus#hápmi" "kontrákta#vearba" "lakta#partihkkal" "lakta#partihkal" "namma" "partihkal" "partihkkal" "postposišuvdna" "preposišuvdna" (".*tearbma"r) "sátni" "sátne#mátta" "substantiiva" "tearbma" "vearba" (".*#sátni"r) (".*#namma"r) ;

    ## tool for verbal activity

LIST WORD-PARTS = "akseanta#mearka" "bustávva" "B-#bustávva" "C-#bustávva" "goallos#sáhcu" "gravis#mearka" "stávval" ;

LIST SIGN = "akseanta#mearka" "čuokkis" "duppal#čuokkis" "gažaldat#mearka" "goallos#sáhcu" "gravis#mearka" ;

SET ABSTR-TOOL = SOUND OR ABSTR-T ;

# Premilinary dividing of the set as a help for dimambiguating "gullat" vs. "gullát".  
 
#Those are typically comitative (instead of locative) if they go together with verbs from the LIST HUMAN-AGENT-V and probably also from INTELLECTUAL-ACTIVITY-V. The counterpart for locative is until now SITUATION, we might have to consider making a new list ABSTR-TOOL comprising SITUATION and other elements.

# qualities
# - - - - -

LIST COLOUR = "alit" "čáhppat" "fiskat" "fioleahtta" "ránes" "ruoná" "ruoksat" "runta" "ruškat" "sáhppat" "vielgat" "violeahtta";

# objects, not necessarily tools
# - - - - - - - - - - - - - - - -

LIST MATERIAL = "ávnnas" "materiála" "muorra" "náhkki" "ullu" "silba" "stálli" ;
  
LIST PLANT-PART = "lasta" "ruohtas" ;
 
    # of plants etc. 
  
LIST SHOE = "čázet" "gállot" "gálssot" "gáma" "goikket" "gumme#stevvel" "njuorjjot" "nuhtat" "nuvttat" "nuvttot" "sabet" "sáppat" "sisttet" "skárri" "skuovva" "stevvel" "suohkku" "ullo#suohkku" ;

    # anything that will go on feet. IV-verbs like "vázzit" can take these as objekt.
    
LIST BEDCLOTHES = "beaska" "gávdni" "oađádat" "rátnu" "roavgu" "seaŋga";

    # anything that can be used as bedclothing. IV-verbs like "oađđit" can take these as objekt. 
    
LIST CLOTHES = "báidi" "beaska" "bivttas" "boagán" "buksa" "čikŋa#bivttas" "čuvla" "dálve#bivttas" "dorka" "gákti" "gárvu" "geasse#bivttas" "kamel#guolga#bivttas" "láđđe#bivttas" "láđđe#gákti" "liidne#gákti" "náhkke#boagán" "olgguldas#bivttas" "sáme#bivttas" "sis#báidi" "siste#gákti" "sáme#gákti" "T-báidi" ;
   

LIST FOOD = "beatnat#muorji" "biebmu" "biergu" "bohcco#biergu" "bohccobiergo#borramuš" "borramuš" "čáhppes#muorji" "eana#muorji" "fuođar" "goike#guolli" "gordni" "guosse#mális" "jáfu" "jokŋa" "láibi" "mális" "málli" "meahcce#muorji" "ruksessarva#biergu" "sarrit" "vuodja#gáhkku" ;

    # potential tool for political activity etc., potential place for other food, insects etc.

LIST POISONOUS-FOOD = "dierpmá#muorji" ;
    
LIST FOOD-TIME = "gaskabeai#biebmu" "iđit#biebmu" ;

LIST LIQUID = "bohcco#mielki" "bruvsa" "buolle#viidni" "buollin#viidna" "čáhci" "čáhppesmuorje#sákta" "čielga#mielki" "deadja" "duolva#čáhci" "gáffe" "gáicca#mielki" "gearra" "goden" "gusa#mielki" "jugus" "juhkamuš" "mielki" "rukses#viidni" "sarrit#sákta" "sáiva#čáhci" "sákta" "sávzza#mielki" "suvrra#mielki" "viidna" "viidni" "vilges#viidni" "vuola" "vuolla"  ;

    
LIST PLANT = "aláš#bađve#rássi" "alit#diehppe#rássi" "ávža" "báhpa#čehporaš" "beahci" "bastilis#látnjá" "beahce#guolbba" "beatnat#njuovčča#rássi" "biehtár#guhkká" "biehtár#rássi" "bievla#guolbba" "boallo#rássi" "biello#daŋas" "biello#rássi" "cizaš#vuolpu" "duopma" "duottar#bussá#geahpil" "fiikkon#muorra" "fiskes#rássi" "gálla" "gáma#suoidni" "gáiski" "gáskálas" "giedde#guolbba" "giedde#máđir" "golle#rássi" "guossa" "heastta#gazza#rássi" "horbmá" "jámeš#bátni" "jeagil" "juopmu" "lasta#muorra" "lageš" "leaibi" "miestta" "muotke#njárga#guolbba" "niitto#guolbba" "njála#njuovčča" "oaive#jeagil" "oaksi" "rásse#guolbba" "reatká" "sállja" "sieđga" "skáhpi" "skierri" "soahki" "suhpi" "uvlo#rássi" "vándá#divga" "vilges#máđir" "vuodja#rássi" "vuovde#guolbba" ;

    # Plants could be actors in fairytales (Alice)
    

LIST FURNITURE = "áltár" "beavdi" "hildu" "ildu" "seaŋga" "skáhppe" "soffá" "stuollu" ;

LIST CONTAINER = "bohtal" "čáhce#lihtti" "dáige#lihtti"  "eappir" "fárppal" "gohppu" "gordne#lihtti" "gore"  "guolle#lihtti" "jienastan#lihtti" "liegga#čáhce#lihtti" "lihtti" "mielke#lihtti" "muorra#lihtti" "oljo#lihtti" "ruska#lihtti" "sálte#lihtti"  "sohkar#lihtti" "sovsa#lihtti" "tempel#bumbá" "veadde#lihtti" "vuoššan#lihtti" ;

  #Those always function as units too, such as in: A bottle of water.

# People can be inside them:
LIST SPACIOUS-VEHICLE = "áhpe#guolástan#fanas" "biila" "boasta#biila" "borjjas#fanas" "borjjas#vanca" "buohcce#biila" "buohcci#biila" "bussa" "busse" "čáhce#girdi" "dámpa" "drošša" "drošše" "fanas" "fievru" "gádjun#helikopter" "gálvo#biila" "gávpot#bussa" "gávpot#busse" "girje#busse" "geaksu" "girdi" "guolle#fanas" "guorbme#biila" "helikopter" "johka#fanas" "láivi" "mini#bussa" "mini#busse" "mohtor#fanas" "mohtor#fievru" "mohtor#vanca" "njealjit" "njeallje#juvllat" "olgoriikkafeastonuohtte#fanas" "ruvtto#biila" "skuvla#biila" "skuvla#bussa" "skuvla#busse" "suhkki#vanca" "tákse" "táksi" "traktor" "tráktor" "vanas" "vanca";

# People cannot be inside them:
LIST SMALL-VEHICLE = "ásen" "beana" "fievro#šibit" "heargi" "heasta" "máná#sihkkel" "meahcce#sihkkel" "mohtor#gielká" "mohtor#sihkkel" "mopeda" "nieidamáná#sihkkel" "njeallje#juvllat" "sihkkel" "skohter" "skuter" "sykkel" ;

SET VEHICLE = SPACIOUS-VEHICLE OR SMALL-VEHICLE ;

LIST TEXT = "álbmotlohkan#listu" "áviissa#čálus" "ášše#girje" "ášše#girji" "álgoálbmot#gažaldat" "aviisa" "áviisa" "ášše#bábir" "ášše#logahallan" 
"bargo#bihttá" "bargo#prográmma" "bassi#vádjolus#lávlla" "báike#namma#listu" "beavde#girji" "beavde#girje#čálus" "biras#logahalla" "bivdo#bálká#čálus" "b-#johto#čálus" "bláđđi" "boađus#logahallan" "bođu#mearrádus" "bušeahtta#poasta" 
"čálus" "čála" "cealkámuš" "čujuhus#listu" "čujuhus#logahallan" "čuovus" 
"dárogiel#teaksta" "dásádat#logahallan" "dieđáhus" "dienas#listu" "digge#logahallan" "dihtor#čálus"   "divššohas#journála" "dokumeanta" "duollo#girje" "duollo#girji" "duopmo#čálus" 
"e-#poasta" "eana#girji" "eanaopmodat#logahallan" "eksamen" "eksamen#bihttá" 
"fáddá#siidu" "fága#čálus" "fáksa" "fápmudus#mearrádus"
"gáldu" "GAB-#logahallan" "geahččalan#prográmma" "giddodat#logahallan" "girji" "girko#girje" "girko#girji" 
"hálddahus#mearrádus" "huksen#logahallan" 
"jahke#dieđáhus" "jahke#logahallan" "jietna#girji" "johtti#čálus" "journála" "journála#čállin" "journála#diehtu" "johtu#čálus" "johto#čálus" 
"kárta" "lasta" "láhka" "láhka#čálus" "láhka#mearrádus" "láhka#teaksta" "láđđi" "leaksu" "listu" "logahallan" 
"mátke#muitalus" "mannohadde#logahallan" "málbma#logahallan" "mearka#logahallan" "mearrádus#dokumeanta" "miellahtto#logahallan" "mollengeađge#logahallan" "mielddus" 
"namma#listu" "neahtta#siidu" "nuppástuhttin#prográmma" "oahppo#girji" "oahppo#prográmma" "oaive#čálus" "ON-#raporta" "opmodat#logahalla" 
"preassa#dieđáhus" "raporta" "ráfáidahttin#mearrádus" "reive" "riekte#dieđa" "romána" "ruovttu#bargu" "ruovttu#eksamen" "ruovttu#siidu" 
"Sápmelaš#-bláđđi" "sáme#konvenšuvdna" "sáme#čálus" "sámegiel#teaksta" "sárdni" "sátne#girje" "sátne#girji" "sitáhtta" "statistihkka" "stuorra#digge#dieđáhus" 
"teaksta" "telegrámma" 
"váidda" "vahátealli#logahalla" "vealge#logahallan" "vearro#logahallan" "vuođđo#lága#mearrádus" "vuoigat#vuođavuođđo#ášše#bábir" "vuoigatvuođa#gažaldat" ;

  # A potential place (locative?) for sth. written.
  # Maybe one should differentiate between written and spoken texts

LIST ABSTR-TEXT = "alimus#riekte#mearrádus" "almennet#mearrádus" "almmuhus#teaksta#evttohus" "areála#plána" "áide#plána" "áige#plána" "áittardan#plána" "ákšuvdna#plána" "álbmot#meahcce#plána" "álbmot#riekte#mearrádus" "árvalus" "ássan#plána" "barta#plána" "báber#mearrádus" "bábir#mearrádus" "bággo#lonistan#mearrádus" "bálvalus#plána" "bivdo#áige#mearrádus" "bivdo#mearrádus" "boazo#doallo#láhka#evttohus" "boras#dávda#plána" "boarrásiid#plána" "boazo#doallo#plána" "buoridan#plána" "buhtadus#ortnet" "bušeahtta#evttohus"  "buhtadan#mearrádus" "buoridan#evttohus" "bušeahtta#mearrádus" "bušeahtta#málle#evttohus" 
"cuvccas" "čađahan#mearrádus" "čađahan#plána" "čoahkke#plána"
"dearvvašvuođa#plána" "departemeanta#evttohus" "diibmo#juohko#plána" "diehto#juohkin#plána"  "dievasčoahkkin#mearrádus" "digge#mearrádus" "divvun#plána" "doaibma#bidjo#evttohus" "doaibma#plána" "doallo#-ortnet" "doallo#plána" "doarjja#ortnet" "dulvadan#evttohus" "dulvadan#mearrádus" "dulvadan#plána" "dutkan#plána" "duodje#oahppo#plána" "duodje#plána"
"eaktu" "eana#čujuhus" "eana#čujuhan#cealkámuš" "eanan#doallo#plána" "eana#hálden#plána" "eanan#juohkin#mearrádus" "eana#láhka#mearrádus" "eana#mihtidan#njuolggadus" "eananvuovdin#njuolggadus" "eana#vuovdin#mearrádus" "eanetlohko#mearrádus" "eaŋkal#mearrádus" "earre#mearrádus" "ekonomiija#plána" "el#fápmo#háhkan#plána" "energi#plána" "eSápmi#plána" "EU-#mearrádus" "evttohus" 
"fáddá#evttohus" "fága#plána" "fágaid#oahppo#plána" "fápmudus#mearrádus" "fáles#ráfáiduhttin#mearrádus" "fievrridan#plána" "finnmárkku#láhka#evttohus" "friddja#suohkan#mearrádus" "fylkka#digge#mearrádus" "fylkka#geaidno#plána" "fylkka#oasse#plána" "fylkka#plána" "fylkka#plána#evttohus" 
"geasko#evttohus" "gažaldat" "gáhtten#eaktu" "gáhtten#plána" "gárren#mirko#plána" "gáržžidan#evttohus" "gáržžidan#mearrádus" "gávpe#mearrádus" "geasku" geaidno#plána" "gealbo#plána" "geavahan#plána" "gelbbolašvuođa#plána" "gelbbolašvuođa#lokten#plána" "generál#plána" "gieldda#oasse#plána" "gieldda#plána" "giella#gažaldat" "giella#mearrádus" "giella#njuolggadus" "giella#oahppa#plána" "giella#ovddidan#plána" "guođoheaddji#barta#plána" "guolástan#mearrádus" "guolle#bivdo#mearrádus" "guovddáš#lihttu" "guovtte#gielalašvuođa#plána"
"hadde#evttohus" "hadde#mearrádus" "hálddašan#doaibma#plána" "hálddašan#ortnet" "hálddahus#plána" "hálddašan#mearrádus" "heivehan#plána" "huksen#ášše#mearrádus" "huksen#plána" "ILO-#soahpamuš" "investeren#plána" "IO-#plána" "IT-#doaibma#plána" "jahke#plána" "jearaldat" "jođihan#plána" "johtolat#dorvvolašvuođa#plána" "journála#vurken#ortnet"
"konsešuvdna#mearrádus" "kultur#suodjalan#mearrádus" "kultur#plána" "kultur#viesso#plána"
"lasihan#plána" "láhka#rievdadan#evttohus" "láhka#ásahus#mearrádus" "láhka#evttohus" "láhka#mearrádus" "láhka#mudden#evttohus" "láhka#rievdadan#evttohus" "láhtto#evttohus" "láigohan#eana#vuovdin#mearrádus" "lávde#godde#evttohus" "lihtto#láigohan#mearrádus" "luođa#leaktu" "lonuhan#mearrádus" "luossa#bivdo#mearrádus" 
"máinnas" "mánáid#gárde#plána" "márkan#plána" "mátke#plána" "mearrádus" "mearrádus#evttohus" "mearra#hápman#plána" "mudden#mearrádus" "mudden#plána" "muitalus" "murjen#mearrádus" "muorra#čuohppan#plána" "murren#mearrádus" 
"nannen#plána" "njuolggadus" "njuolggadus#evttohus" "nuoraid#plána" "nuppástus#evttohus" 
"oahppo#plána" "oanidan#mearrádus" "ođastus#evttohus" "orohat#plána" "ovda#plána" "ovddidan#plána" "ollašuhttin#plána" "ovttastahttin#mearrádus" "plána#evttohus" "plána#mearrádus" "prejudikáhta#mearrádus" "prinsihppa#mearrádus" "prošeakta#plána" 
"ráfáiduhttin#plána" "ráhkadan#plána" "rámma#plána" "ráŋggáštus#mearrádus" "rávdnje#vuogádat#plána" "resolušuvdna" "riekte#cealkámuš" "riekte#mearrádus" "rievdadan#evttohus" "riikka#oasse#plána" "rusttet#plána" "ruvke#plána"
"sáme#kodisilla" "Sámedigge#plána" "sáme#guovllu#mearrádus" "sáme#mearrádus" "sierra#lohpe#mearrádus" "sierra#mearrádus" "sis#doallo#mearrádus" "skuvla#plána" "skuvlen#plána" "soahpamuš#evttohus" "sosial#plána" "sosiála#plána" "spiehkastan#mearrádus" "stivrra#mearrádus" "strategiija#plána" "suodjalan#evttohus" "suodjalan#mearrádus" "suodjalan#plána" "suorge#plána" "suvdin#plána"
"teáhter#plána" "tearbma#evttohus" "traktáhta#mearrádus" 
"váidda#mearrádus" "válde#sirdin#mearrádus" "váldo#geaidno#plána" "váldo#mearrádus" "várddus#plána" "veajuiduhttin#plána" "vearro#mearrádus" "vearuhan#mearrádus" "viiddidan#plána" "virgáibidjan#njuolggadus" "vuođđo#láhka#evttohus" "vuođđo#láhka#mearrádus" "vuođđo#mearrádus" "vuoruhan#plána" "vuovde#doallo#plána" "vuovde#mearrádus" "Wiener#soahpamuš" 
"1873#-mearrádus" "1967#-mearrádus" ;

  # A potential place (locative?) for sth. written, spoken or abstract activity 
  
# Part-whole for human

LIST BODY = "ámadadju" "bahta" "bahta#ráigi" "bállo#suotna" "bátni" "beađbe#lađas" "bealgi" "beallji" "bierggas" "bieža#dákti" "billu" "buđđá" "čalbme#deahkki" "čalbmi" "čatnan#gođđu" "čeabet" "čelččen" "čeŋkkeš" "čibbe#skálžu" "čibbi" "čižže#bátni" "čielge#ađa" "čielge#dákti" "čielgi" "čoalli" "čoamohas" "čoarbbeal#deahkki" "čoarbbeal#lađas" "čoarb#bealli" "čoavji" "čorbma" "čorbma#oassi" "čorbma#váimmus" "čorbma#vuođđu" "čotta" "čuožžamas#deahkki" "čurti" "čuvdi" "dábba" "dáđvi" "dákte#gođus" "dákti" "dávdi" "deahkke#gođus" "deahkki" "erttet" "erttet#deahkki" "gahpárus" "gahperus" "gardnjil" "gaska#suorbma" "gassa#čoalli" "gassa#váhkká" "gáddu" "gáibi" "gállu" "gánis" "gátnis" "geađđi" "geahpis" "giegir" "giehta" "giehta#deahkki" "giehta#gávva" "giehta#láhpi" "giehta#ramas" "giehta#ruohtta" "giehta#sealgi" "giehta#váibmu" "giehta#váimmus" "gilga" "goapmir#váimmus" "goaŧŧo#čotta" "goaŧŧu" "goike#dákti" "gullu" "guoggomas" "guoggomas#ráksá" "gurot#giehta" "hárdu" "heagga#roasmmoheapmi" "jarri" "juolge#bealgi" "juolge#čelččen" "juolge#gávva" "juolge#lađas" "juolge#láhpi" "juolge#mátta" "juolge#suorbma" "juolge#vuođđu" "juolgi" "lađas" "láhpe#lađas" "manin" "manne#jođas" "manne#ráksá" "maŋŋe#buoidi" "mánágoahte#čotta" "máná#goahti" "mielga#njunni" "monimuš" "monin" "monne#jođas" "monne#ráksá" "morče#suotna" "morči" "muohtu" "náhpi" "niehkki" "nierra" "niske#gohpi" "niski" "njálbmi" "njiehcehas" "njunni" "njuovčča" "oaive#assi" "oaive#čohkka" "oaivi" "oalge#deahkki" "oalgenoras#deahkki" "oalgenoras#váhkká" "oalgi" "oalul" "obba#lággá" "orbbeš" "raddi" "rápma" "rumaš" "rumaš#golggus" "rumaš#lahttu" "rumaš#njalbi" "sáhppe#suvri" "rumaš#golggus" "rumaš#lahttu" "rumaš#njalbi" "sáhppe#suvri" "siidu" "siskkit#beallji" "sotken#oalli" "spiral" "suolbmudan#oalli" "suorbma" "suorbma#geahči" "šušmi" "váhkká#deahkki" "váibmu" "vuohčče#cuozza" "vuoivvas" "vuokta" "vuolit" "oassi" "gieđas" "vuorggu";

LIST WEATHER-ENTITY = "balva" "arvi" "muohta" ;

    
SET OBJECT = PLANT-PART OR SHOE OR FOOD OR TEXT ;

    # entities which not necessarily are tools

# Places
LIST BUILDING = "áiti" "ámmát#skuvla" "biebmo#rámbuvri" "barta" "badje#dállu" "boasta" "buohcciid#siida" "buohcci#viessu" "buvda" "buvri" 
"dállu" "dálve#skuvla" "dálve#viessu" "eanan#doallo#alla#skuvla" "fáŋga#viessu" "fiervá#buvri" 
"geaidno#gievkkan" "gearde#viessu" "geasse#buvri" "goahti" "gávpi" "gieldda#skuvla" "girku" "hotealla"
"internáhtta#skuvla" "inšenevra#alla#skuvla" "kafeá" "kram#buvda" "kultur#skuvla"  "láđđu" "láhtu" "lávvu" "lonuhus#gávpi" 
"mánáid#skuvla" "mearra#buvri" "mearra#skuvla" "musihkka#alla#skuvla" "návet" "návet#goahti" "návsti" "návstu" "nuoraid#skuvla" 
"oktasaš#barta" "orrun#viessu" "poasta" "priváhta#skuvla" "ráido#viessu" "rámbuvri" "rámbuvra" "rásse#láđđu" "riika#skuvla" "riika#buohcci#viessu" 
"sáme#skuvla" "skuvla" "stálla" "stálle" "stállja" "stohpu" "synagoga" "šloahtta" 
"tempel" "tuollo#viessu"  "universiteahta" "viessu" "visti";

LIST GENERAL-PLACE = "akto#ráđđen#guovlu" "albmi" "almmi#ravda" "almmi#riika" "areála" "atnu#eana" "Árjepluovi#-guovlu" "ásodat#guovlu" "ássan#báiki" "ássan#guovlu" 
"badje#geardi" "badje#eana" "badje#eanan" "barta#guovlu" "báike#goddi" "báiki" "bákte#hárji" "bealdu" "biegga#báiki" "biras" "bivdo#guovlu" "boazo#doallo#guovlu" "boazo#guovlu" "boazo#guohton#eana" "boazo#guohton#eanan" "buođđo#sadji" 
"čakča#eana" "čakča#eana" "čakča#eanan" "čakča#báiki" "čakča#orohat" "čiegus" "čoahkke#báiki" 
"dálve#báiki" "dálve#eanan" "dálve#eana" "dálve#guohton#eana" "dálve#guohtun#guovlu" "dálve#orohat" "dáruiduhttin#guovlu" "davvi#guovlu"  "davvi#riika" "davvi#siida" "dánssa#báiki" "digge#báiki" "dimbbar#čuohppan#sadji" "distribušuvdna#guovlu" "doaibma#guovlu" "dolla#gáddi" "duiska#eana" "duottar#guovlu" "dutkan#guovlu" "eanan#doallo#-eana" "eanan#doallo#eana"  "eana#doallo#guovlu" "eretfárren#guovlu" "earre#sadji" "fabrihkka#guovlu" "fanas#látta#sadji" "fága#biras" 
"gádde#báiki" "gádde#ravda" "gáhtten#guovlu" "gávpe#báiki" "gávpe#márkan" "gávpot" "gávpot#poarta" "geahččan#guovlu" "geaidno#guorra" "geaidno#ravda" "geasse#báiki" "geasse#eana" "geasse#eanan" "geasse#guohton#eanan" "geasse#guohton#eana" "geasse#orohat" "geasse#sadji" "geavahan#guovlu" "gilli" "gili#guovlu" "giddagas#báiki" "giđđa#báiki" "giedde#eana" "gili#guovlu" "gilvva#gárdi" "gilvvohallan#báiki" "girko#gárdi" "guovlu" "goahte#sadji" "goike#eana" "goike#eanan" "guoddin#seaŋga" "guohtun#guovlu" "guolástan#guovlu" "guolástus#guovlu" "guolle#báiki" "guolle#bivdo#sadji" "guohton#eana" "guohton#eanan" "guohtun#eana" "guottet#báiki" "guovddáš#guovlu"
"hálddašan#guovlu" "hámman" "hávde#eanan" "hávde#eana" "helvet" "jeagge#eanan" "jeagge#eana" "jeagge#eanan" "jeagel#guovlu" "jeagel#guohtun#eana" "jienastan#báiki" "johtin#guovlu" "julevsáme#guovlu" 
"kálka#eana" "kontineanta" "konvenšuvdna#guovlu"
"lagaš#guovlu" "lassi#eana" "láigo#eana" "leansmánni#guovlu" "LNF-#guovlu" "lulli#guovlu" "lullisáme#guovlu"  "luome#eana" "luossa#báiki" "luonddu#biras" 
"mandáhtta#guovlu" "máilbme#čiehka" "máilbmi" "márkan" "mátta#guovlu" "mátta#sámi#guovlu" "meahcce#eana" "meahcce#gilli" "meahce#guovlu" "mearra#lodde#guovlu" "mearra#sámi#guovlu" "mearra#suodjalus#guovlu" "njáskan#báiki" "njunuš#sadji" "nuorta#eana"
"oahppo#báiki" "oaive#gállo#báiki" "oktasaš#eana" "oktasaš#eanan" "oktasaš#guohton#eanan""oktasaš#guovlu" "oktasaš#orohat" "olgo#báiki" "olgo#riika" "orohat" "orrun#báiki" "orrun#guovlu" "priváhta#eana" 
"rasttidan#báiki" "ravda#guovlu" "rádja#guovlu" "rádje#guovlu" "rádje#guohtun#guovlu" "ránná#riika" "riddo#eana" "riddo#guovlu" "riggodat#guovlu" "riika" "ruoktu" "ruovde#máđidja" "ruovttu#eanan" "ruovttu#eana" "ruovttu#guovlu"
"sadji" "sáide#báiki" "seahkalas#giella#guovlu" "šákšadorske#guovlu" "sámi#eana" "sáme#eana" "sámigielat#guovlu" "sáme#vearro#eana" "sáme#guovlu" "sámi#guovlu" "siseatnan#guovlu" "sohka#guovlu" "sallju" "searve#guovlu" "siida" "sis#eana" "skáhppon#guovlu" "skoalta#báiki" "skuvla#biras" (".*šillju"r) "SOF-#guovlu" "stáhta#eana" "stáhta#álbmot#guovlu" "stáhta#sadji" "suopman#guovlu" 
"TV-#šearbma"
"váhnen#eana" "váhnen#eanan" "váldoássan#guovlu" "várdo#báiki" "vearro#eana" "viesso#sadji" "viesttar#bađa#eana" "virge#báiki" "vuoiŋŋastan#báiki" "vuotna#guovlu" "vuolgga#guovlu" "vuopme#eana" "vuovde#guovlu" ;

LIST NATURE-PLACE = "almennet" "ávži" "bákti" "beahce#vuovdi" "borri" "buollán#ávži" "coagis" "čázádat" "čolpi" "darfe#jeaggi" "dearbmi" "duottar#jávri" "duottar#oassi" "eatnu"
"fielbmá" "fiervá" "gáisá" "gáisi" "gárggu" "gárgu" "gieddi" "gieva#jeaggi" "gohpi" "gohppi" "gorži" "guolbban" "gurra" "jávri" "jávre#gáddi" "jeaggi" "jiehkki" "johka" "johka#gaska" "johka#gáddi" "johka#leahki" "johka#njálbmi" 
"láddu" "láttu" "latnja" "lavdnje#jeaggi" "leahki" "lokta" "luohkká" "luokta" "luondu" "luoppal" "luossa#johka" "meahcce#gieddi" "mearra" "mielli" "mohkki" "muotki" "njárga" "njunni" "oaivi" "oalge#johka" "oalgi" "orda" "orrit" 
"reašši" "riddo#gáddi" "riddu" "riidi" "ruovttu#gieddi" "soahke#vuovdi" "stealli" "várre#vielti" "várri" "vearro#duottar" "vielti" "vuohppi" "vuotna#bahta" "vuotna#gáddi" ;

#LIST ELEMENT = "áibmu" "čáhci" "dolla" ;

    ## (probably often place) They are often tools - they are not probably Pl Loc.

LIST SETTLEMENT-PLACE = "ássan#guovlu" "duottar" "eana" "eana#guovlu" "eanan" "eatnan" "gáddi" "geasse#siida" "Gennesaret#jávre#gáddi" "gilli" "guovlu" "mátke#guovlu" "meahcci" "mearra#gáddi" "njárga" "riddu" "sámi#siida" "sis#eatnan#siida" "sis#vuotna" "suolu" (".*#jávre#gáddi"r) "vággi" "vuotna" "vuotna#bahta" "vuotna#gáddi" "vuotna#guovlu" "vuovdi" ;

SET GEOGRAPHICAL-PLACE = NATURE-PLACE OR SETTLEMENT-PLACE ;

LIST GEN-POLITICAL-PLACE = "gávpot" "gilli" "girko#suohkan" "fylka" "mearra#gátte#suohkan" "miel#lahtto#suohkan" "orohat" "rádji" "riddo#suohkan" "riika" "riika#rádji" "ruovttu#gávpot" "sáme#eana" "Sáme#eana" "sis#eatnan#gilli" "sis#eatnan#suohkan" "stáhta" "suohkan" "válga#biire" "vuotna#gávpot" "vuotna#suohkan" ;

  ## can also function as an actor
  
LIST FYLKA = "Finnmárku" "Finnmarku" "Romsa" "Nordlánda" "Lulli-Trøndelag" "Davvi-Trøndelag"
       "Hedmárku" "Akershus" "Buskerud" "Vestfold" "Østfold" "Aust-Agder" "Vest-Agder"
       "Rogalánda" "Hordalánda" "Opplánda" "Fjordane" "Romsdal" "Telemark" ;

LIST NORGA = "Dánmárku-#Norga" "davvi#Norga" "Davvi-Norga" "gaska-#Norga" "Norga" "norga" "norgga#bealli" "Norgga-#ruoŧŧa" ;

LIST NATION-NOT-NORGA = "Columbia" "Duiska" "Frankriika" "Guatemala" "Israel" "Kanada" "Láhten#-Amerihká" "náššuvdna" "riika" "Ruošša" "Ruoŧŧa" "Sápmi" "sápmi" "Skandinávia" "stáhta" "Suopma" "Suopma-#Ruošša" ;

    
SET NATION = NATION-NOT-NORGA OR NORGA ;

SET POLITICAL-PLACE = NATION OR GEN-POLITICAL-PLACE OR FYLKA OR GIELDA ;

    # Can be an actor

  
# This set is important for distiguishing "vuodjit" and "vuodjat", so there shouldn`t be words which can be combined with "vuodjat":
LIST CONCRETE-ROUTE = "Álttá-Kárášjoga-#máđidja" "Álttá-Kárášjoga-#máđii" "bálggis" "bievla#geaidnu" "dálve#luodda" "dálve#máđidja" "dálve#máđii" "eanadat#luodda" "E6#-bálggis" "gáhta" "gávpot#gáhta" "geaidnu" "guorra" "johttin#geaidnu" "kultur#luodda"  "láhttu" "luodda" "luonddu#bálggis" "máđidja" "máđii" "meahcce#luodda" "ráidu" "reahpen#ráigi" "spáiddar#ráidu" "suohkan#luodda" "váldo#geaidnu" ;
 # and others!

LIST ABSTR-ROUTE = "gaska" "mátki" "miila" "mohkki" "tuvra" ;

SET ROUTE = CONCRETE-ROUTE OR ABSTR-ROUTE ;
 

LIST WATER = "ája" "áhpi" "álddis" "basseaŋŋa" "čáhci" "cázádat" "deanu#čáhcadat" "deanu#cázádat" "eatnu" "fielbmá" "jávri" "johka" "luokta" "mearra" "sállan#nuorri" "sálte#ája" "vuodjan#álddis" "vuojadan#álddis" "vuotna" ;

LIST GOAHTI-PLACE = "árran" "boaššu" "loaidu" "reahpen#ráigi" "soggi";
 

LIST ROOM = "bargo#márkan#kantuvra" "bártniid#hivsset" "biergodiehtojuohkin#kantuvra" "boazo#doallo#kantuvra" "čájáhus#latnja" "ealáhus#kantuvra" "ealáhus#kántuvra" "eami#álbmot#kantuvra" "eana#juohkin#kantuvra" "eanan#vuovdin#kantuvra" "eana#vuovdin#kantuvra" "feaskkir" "fylkka#eana#doallo#kantuvra" "gámmár" "gámmir" "garáša" "gievkkan" "guovllu#kántuvra" "guovllu#kantuvra" "hivsset" "informašuvdna#kántuvra" "kántuvra" "kantuvra" "klássa#latnja" "leans#mánne#kantuvra" "lášmmohallan#sále" "lášmmohallan#sálla" "livnnet#kantuvra" "livnnet#kántuvra" "lokta" "luohkká#latnja" "molssodan#latnja" "nieiddaid#hivsset" "nohkkan#latnja" "oađđen#latnja" "oađđin#latnja" "oahpaheaddji#latnja" "sallju" "skuvla#latnja" "sosiál#kantuvra" "stohpu" "studio" "šillju" ;

SET PLACE = GEOGRAPHICAL-PLACE OR POLITICAL-PLACE OR GENERAL-PLACE OR ROUTE OR BUILDING OR ROOM OR GOAHTI-PLACE ;

# Abstract

# Conceptual Hierarchy
# ====================
# minor caps : structure elements not sets
# caps : sets

#                                   abstract
#                           /                           \
#                       /                                   \
#                   /                                           \
#abstract-non-actor                                  abstract-actor (ACTOR-ROLE)
#        /               \                               /                   \
#thing-potential     activity-potential          building-potential      concept-potential
#    /       \           /       \                   /                     /
#                                            ORGANIZATION INSTITUTION    ABSTR-INSTITUTION
#
#=========================================================================================================================
#
#                    thing-potential
#            /                               \
#        ABSTR-ENTITY                      CONCEPT
#                                        /           \         \
#                                    PROPERTY    STRUCTURE  OTHER-CONCEPT
#        
#=========================================================================================================================
#
#                             activity-potential
#                    /                                           \
#            dynamic                                          static
#            /               \           \                        /                     \
#        INDUSTRY             EVENT   EVENT-TOOL-ACTIVITY    SITUATION                   
#        /           \                                       /        \
#OTHER-INDUSTRY  POLTICAL-INDUSTRY                        DILLI    WEATHER-SITUATION   ILLNESS
#
##What else: STATE
#=========================================================================================================================

LIST ORGANIZATION = (np sem_org) "alimus#riekti" "álbmot#allaskuvla" "alla#skuvla" "ámmát#organisašuvdna" "ámmát#skuvla" "ámta#diggi" "ásahus" "bargo#kantuvra" "báhpa#skuvla" "báikkálaš#searvi" "bálvalan#doaibma" "bearráigeahččan#orgána" "bellodat" "birasgáhtten#departemeanta" "boazo#doallo#searvi" "buohcce#stohpu" "buohcce#viessu" "buohcciid#siida" 
"dearvvašvuođa#ásahus" "dearvvašvuođa#fitnodat" "departemeanta" "departementa" "dearvvašvuođadutkan#guovddáš" "diggi" "doaibma#guovddáš" "duopmo#stuollu" "dutkan#departemeanta" "dutkan#ráđđi" 
"ealáhus#ráđđi" "eanandoallo#departemeanta" "eanandoallo#departementa" "eanan#doallo#searvi" "eanan#juohkin#diggi" "eise#váldi" "etáhta" "etáhtta" 
"fakultehta" "Finnmárkku#kommišuvdna" "firbmá" "fitnodat" "fylkka#gielda" 
"geahččo#doaibma" "geahččoeise#váldi" "gelbbolašvuođa#guovddáš" "giddagas" "gielda#departementa" "gieldda#diggi" "giella#guovddaš" "giella#ossodat" "giella#ráđđi" "girje#rájus" "girku" "girko#ráđđi" "gozihan#komitea" "guolástan#departemeanta" "guovddášeise#váldi" "guovddáš#searvi" "guovllu#stivra" "guovllubuohcce#viessu" 
"hálddašan#orgána" "hálddahus" "dearvvašvuođa#ásahus" "dearvvašvuođa#guovddáš" "fylkka#diggi" "instituhtta" "institušuvdna" "IT-#ovttadat" 
"jándor#ásahus" "jienastan#stivra" "joatkka#skuvla" "johttisámi#searvi" "justis#departemeanta" "justis#komitea" "kantuvra" "klinihkka" "komitea" "komišuvdna" "kulturlávde#goddi" "kulturmuito#ráđđi" "láhka#ásahus" "lávde#goddi" "Luondduhálddašandirektoráhta" "luonddu#hálddašan#-direktoráhta" "luondduhálddašan#direktoráhta" "mánáid#gárdi" "mánáid#skuvla" "media" "meieriija" "militeara" "musea" 
"našunál#diggi" "nuoraid#skuvla" "oahpahus#doaibma" "oahpaheaddji#searvi" "oahpahus#ráđđi" "olgoriikka#departemeanta" "organisašuvdna" "orgána" "ossodat" "ovda#skuvla" "parlameantta" "psykiatriijabuohcce#viessu" "preassa" "ráđđehus" "ráđđi" "reguleren#ráđđi" "riekte#ásahus" "riika#searvi" "riikka#searvi"
"Sámedigge#ráđđi" "Sámediggeráđđi" "Sámediggi" "sáme#diggi" "sáme#institušuvdna" "sáme#komitea" "Sámelávde#goddi" "sáme#mišuvdna" "sáme#musea" "sámi#ráđđi" "sáme#siida" "sáme#skuvlla#stivra" "sámivuoigatvuođalávde#goddi" "searve#goddi" "searvi" "servodat" "sierraduopmo#stuollu" "skuvla" "skuvla#kantuvra" "skuvlla" "stáhta" "stuorra#diggi" "suodjalan#komitea" "suohkan" "suohkan#stivra" "synagoga" 
"universiteahtta" "universitehta" "universitehtabuohcce#viessu" "virgáibidjan#ráđđi" "vuođđo#skuvla"  "vuoigatvuođa#lávde#goddi"
"dearvvašvuođa#stašuvdna" "gielda" "riddo#gielda" "ruovttu#gielda" "sáme#gielda" "Sáme#gielda" "válgalávde#goddi" "vuotna#gielda" ;
 
# those can both be buildings and represent humans
 # Duomma:lea

LIST INSTITUTION = "audiopedagoga#bálvalus" "álgo#bálvalus" "álgodearvvašvuođa#bálvalus" "bagadan#bálvalus" "báikenamma#bálvalus" "bálvalus" "bátnedearvvašvuođa#bálvalus" "bearráigeahččan#bálvalus" "bibliotehka#bálvalus" "birrajándor#bálvalus" "boles#bálvalus" "čállin#bálvalus" 
"data#bálvalus" "dábálašdoavtter#bálvalus" "dálveluodda#bálvalus" "dearvvašvuođa#bálvalus" "dearvvašvuođa#geahčču" "dieđihan#bálvalus" "diehtojuohkin#bálvalus" "divvun#bálvalus" "doarjja#bálvalus" "dulkon#bálvalus" "duollo#bálvalus" 
"fierpmádat#bálvalus" "fysioterapiija#bálvalus" "fitnodatdearvvašvuođa#bálvalus" "fuolahus#bálvalus" "fuolla#bálvalus" 
"gádjun#bálvalus" "geahččo#ortnet" "gielddadearvvašvuođa#bálvalus" "girjerádjo#bálvalus" "girjerájus#bálvalus" "girko#ráđđi" "gohcci#bálvalus" "govdafierpmádat#bálvalus" "gulahallan#bálvalus" "guovddáš" "huksehan#bálvalus" 
"instituhtta" "inšenevra#bálvalus" "jordamor#bálvalus" "jorgalan#bálvalus" "konsuleanta#bálvalus" "kultur#ráđđi"
"maŋŋáhárjehallan#bálvalus" "mánáid#suodjalus" "mánáidsuodjalus#bálvalus" "meahcce#bálvalus"  "miella#dearvvašvuođa#suodjalus" "militear#bálvalus" "neahtta#bálvalus" "nuoraid#bálvalus" 
"oaivadan#bálvalus" "oahpahus#bálvalus" "oasse#bálvalus" "olgo#ipmil#bálvalus"  "oskku#bálvalus" 
"PP-#bálvalus" "poasta#bálvalus" "ráfi#bálvalus" "ruovtto#bálvalus" "ruovttu#bálvalus" "sámegiel#bálvalus" "searvegodde#ráđđi" "servodat#bálvalus" "sihkarvuođa#bálvalus" "skuvla#dearvvašvuođa#bálvalus" "soalddát#bálvalus" "sosiála#bálvalus" "spesialista#bálvalus" "spesialista#dearvvašvuođa#bálvalus" "spesialistadearvvašvuođa-#bálvalus" "suodjalan#bálvalus" 
"tele#bálvalus" "telematihkka#bálvalus" "vákšun#bálvalus" "Várre#bálvalus" "vuođđodearvvašvuođa#bálvalus" "vuoste#bálvalus" "Vuovde#bálvalus" ;

# the previous items can both represent abstract processes and humans
 # Duomma:lea
 
LIST MEDIA = "media" "oahpahus#rádio" "radio" "rádio" "televišuvdna" "TV" ;

#SYMB-INSTITUTION = "njuolggadus" "vuoigatvuohta" "láhka" "ortnet" "čoahkkin#ortnet" ;

    # Those cannot be buildings, but "act" , "say" things for example..

# Two aspects: Place and institution:
# and a couple of other words that do not really have to do with that
# suits "vázzit" + Acc
LIST EDUCATION = "alla#skuvla" "alla#skuvla#oahppu" "álbmot#alla#skuvla" "álbmot#alla#skuvla#oahppu" "álgo#oahppu" "ámmát#skuvla" "artium#kursa" "badje#dássi" "báhpa#skuvla" "befála#oahppu" "boazodoallo#fága" "boazodoallo#suorgi" "boazodoallofága#oahppu"
"dásse#árvo#fága" "doavttir#skuvla" "dulka#oahppu" "duodje#kursa" "duodje#oahppu" "eanandoalloalla#skuvla" "fága" "fidno#skuvla" 
"gaska#skuvla" "gávpe#oahppo#skuvla" "giella#fága" "giella#gursa" "gierdo#skuvla" "gohttehat#skuvla" "gursa" "joatkka#oahppu" "joatkka#skuvla" "julev#sáme#giel#oahppu" "kursa" "luohkká" "luonddu#fága" "mánáid#skuvla" "musihkka#diibmu" "musihkka#skuvla" "musihkka#suorgi" "musihkkaalla#skuvla" "nuoraid#skuvla" 
"oahpaheaddjialla#skuvla" "oahpaheaddje#oahppu" "oahpaheaddji#oahppu"   "oahppo#fálaldat" "oahppo#institušuvdna" "oahpaheai#skuvla" "oahpaheaialla#skuvla" "oahppo#ásahus" "oahppo#dássi" "oahppu" "ovda#skuvla" "páhpa#skuvla" "ráves#olbmuid#skuvla" "rávis#olbmuid#skuvla" "rekrutt#skuvla" "rihppa#skuvla" 
"sámegiel#fága" "sáme#giel#gaska#fága" "seminára" "skuvla" "skuvlla" "smávva#skuvla" "sotna#beai#skuvla" "stáhta#internáhtta" "stáhta#internáhta" "stuorra#skuvla" "teateralla#skuvla" "teáhteralla#skuvla" "universiteahtta" "universitehta" "veahkke#skuvla" "verdde#skuvla" "vuođđo#skuvla" "vuolle#dássi" ;

# suits to LANGUAGE Gen
LIST LESSON =  "álgo#gursa" "dáidda#oahpahus" "gaska#fága" "gealbu" "gelbbolašvuohta" "giella#ovdáneapmi" "fálaldat" "joatkka#fáddá" "joatkka#gursa" "lávda#oahppo#fálaldat" "lohkan#baji#oahppu" "máhttu" "musihkka#diibmu" "oahppa" "oahppo#fálaldat" "oahpahus" "váldo#fága" "vuođđo#fága";
 

LIST OTHER-INDUSTRY = "bálvalus#ealáhus" "biedjo#bivdu" "bivdu" "boazo#ealáhus" "boazo#doallu" "deanu#bivdu" "duodji" "ealáhus" "ealáhus#doaibma" "eanan#doallu" "eana#doallo#ealáhus"  "eksport#ealáhus" "fuođđo#bivdu" 
"geasseguolle#bivdu" "giđđaguolle#bivdu" "godde#bivdu" "guolle#biebman#ealáhus" "guolle#bivdu" "industriija" "johkaluossa#bivdu" "lassi#ealáhus" "luossa#bivdu" "lotnolas#ealáhus"  
"mátke#ealáhus"  "mátkkoštan#ealáhus" "meahcce#ealáhus" "mearra#doallo#ealáhus" "riekte#politihkka" "rievssat#bivdu" "ruvke#doaibma" 
"sáivaguolle#bivdu" "sáiva#bivdu" "sáiva#guolle#bivdu"  "sosiála#politihkka"  "šákšadorske#bivdu" "šákša#dorske#bivdu" "sáme#duodji" "sáme#ealáhus" "smávva#bivdu" "šibit#doallu" "tertieara#ealáhus" "vuoddo#ealáhus" "vuođđo#ealáhus" ;

# Not related to certain political verbs
 # Duomma:lea

LIST POLITICAL-INDUSTRY = "alkohol#politihkka" "assimileren#politihkka" "álgo#álbmot#politihkka" "ásodat#politihkka" "ássan#politihkka"
"bálká#politihkka" "barggahan#politihkka" "bargo#addi#politihkka" "barta#politihkka" "bellodat#politihkka" "bearaš#politihkka" "boazodoallo#politihkka" "boazo#doallo#politihkka" "boras#pirepolitihka" "bora#spire#politihkka" "dáruiduhttin#politihkka" "dásse#árvo#politihkka" "dearvvašvuođa#politihkka" "diehto#politihkka"
"ealáhus#politihkka" "eami#álbmot#politihkka" "eanan#politihkka" "etno#politihkka" "fága#politihkka"
"gávpe#politihkka" "giella#politihkka" "guolástan#politihkka" "guolástus#politihkka" "guovllu#politihkka" "johtolat#politihkka"
"kultur#árbi" "kultur#politihkka" "media#politihkka" "mudden#politihkka" "nuoraid#politihkka" oaččuhan#politihkka" "olgo#riika#politihkka" "poasta#heaittihan#politihkka" "politihkka"
"rádje#politihkka" "regiun#politihkka" "riekte#politihkka" "riikka#politihkka" "regionála#politihkka" "reguleren#politihkka" "ruoššaduhttin#politihkka"
"sáme#giel#politihkka" "sáme#politihkka" "sámi#eatnan#politihkka" "sámi#politihkka" "servodat#politihkka" "sihkarvuođa#politihkka" "sirren#politihkka" "skuvla#politihkka" "sosiála#politihkka" "stáhtakássa#sisa#boahto#politihkka" "stáhta#politihkka" "stuora#politihkka"
"unnit#logu#politihkka" "veajuiduhttin#politihkka" "vearro#politihkka" "viesso#sadje#politihkka" "viidánan#politihkka" "virgái#bidjan#politihkka" "virgái#bidjan#politihkka" ;
 # Related to certain political verbs
 # Duomma:lea
 
SET INDUSTRY = POLITICAL-INDUSTRY OR OTHER-INDUSTRY ;

LIST RIEKTEDILLI = "bajit#hearrávuohta" "bálvalus#fálaldat" "čearddalašvuohta" "digge#girji" "dilálašvuohta" "ealáhus#vuođđu" "eallin#dili#váttisvuohta" "eana#juohkin#suohkan"  "eana#doallo#buvttadeapmi" "eana#vuovdin#kantuvra"  "hálddašeapmi" "kultuvra" "matrihkal" "meahcce#riggodat" "opmodat" "rádje#mearka" "rádji" "rádjá" "resursa#geavaheapmi" "riekte#dilli" "riekte#áddejupmi" "riddo#mearra#guovlu" "sierra#ortnet" "stáhta#eana"  "suodjalan#guovlu" "váldi" "váldo#fierpmádat" "vearro#njuolggadus" "vuoigatvuođa#dilálašvuohta" "vuoigatvuohta" "vuovde#atnu" "vuovde#njuolggadus" "suverenitehta" "kultur#doarjja";

# FYLKA in front of the set is usually in Gen.

LIST STAHTA-GEN = "IT-#doaibma#plána" "almennet" "bargiid#giehta#girji" "boazo#doallo#hálddahus" "bálvalus" "dearvvašvuođa#geahčču" "dearvvašvuođa#iskkadeapmi" "dearvvašvuođa#gozáhus" "doaibma" "doaibma#plána" "doarjja" "doarjja#vuogádat" "dássi" "eaiggáduššan#vuoigatvuohta" "eaiggát#gáibádus" "eana" "eanan" "eatnan" "eise#váldi" "gaska#dille#ortnet#doarjja" "geahččo#ortnet" "geatnegasvuohta" "geavat" "gáibádus" "háldu" "joatkka#skuvla" "kultur#ráđđi" "mearra#bodni" "oahppo#doaibma" "oaidnu" "oaivil" "orgána" "ovddasteaddji" "peršonal#giehta#girji" "ruhta" "sosiála#politihkka" "spesialista#dearvva?vuo?a#bálvalus" "tariffa#šiehtadus" "vuoste#bealli" "áddejupmi" "ámmát#olmmoš" "ásahus" ("jávri" pl) ("oassálastit" actio) ("vuovdi" pl) ("áŋgiruššat" actio) ;

 # "stáhta" in front of the set, is usually Gen.

LIST SAMEDIGGI-GEN = "autoritehta" "áirras" "árvo#kommišuvdna#lahttu" ("ásahit" actio) "bargu" "bušeahtta" "bušeahtta#mearrádus" "bušeahtta#vuogádat" "coahkkin#ortnet" "čielggadeapmi" "čilgehus" "čoahkkin" "čoahkkin#ortnet" "dievas#čoahkkin" "doaibma" "doaimmahat" "ealáhus#foanda" "ekonomiija#hálddašeapmi" "ekonomiija#stivret" "hálddašan#apparáhtta" "jahke#dieđáhus" "jahke#-dieđáhus" "joavku" "kultur#viesso#bušeahtta" "lahttu" "mearrádus" "njuolggadus" "nuoraidkonferánsa" "oaidnu" ("oassálastit" actio)  "olles#áige#politihkkár" "opposišuvdna"  "ovttas#bargo#aktøra" "politihkkár" "rehket#doallu" "sadji" "sága#jođiheaddji" "šiehtadus#málle" "ulbmil" "váldo#ášši" "váldo#hálddahus" ;

SET ACTOR = ANIMATE OR INSTITUTION OR ORGANIZATION ;

  # Should EVENT be part of this set?

# To be used in habitative-sentences:
SET HAB-ACTOR = ACTOR OR HUMAN-GROUP OR INDUSTRY OR EDUCATION OR PEOPLE-NUM OR ("gii") OR Pers OR ("eará") ;
SET HAB-ACTOR-NOT-HUMAN =  INSTITUTION OR ORGANIZATION OR INDUSTRY OR EDUCATION ;


LIST STATE = "bahávuohta" ("dearvvas" der_vuohta) "gaskavuohta" "miella#dearvvašvuohta" "ráfi" "váivi" "veahkki";

  
LIST OTHER-ABSTR-ENTITY = "ášši" "diehtojuohkin#prošeakta" "doaibma#plána" "hehttehus" "oahppo#plána" "ovttas#bargo#prošeakta" "plána" "prošeakta" "sosiála#plána" "váttisvuohta" ;

  # can represent a concrete entity

LIST MONEY = "ánsu" "árvu" "bálká" "beaive#ruhta" "buorrin" "bušeahtta" "čoahkkin#buhtadus" "dearvvasvuođa#bálvalus#mearre#ruhta" "dienas" "divat" "doarjja" "duksa#ruhta"
"dutkan#ruhta" "fuolahan#bálká" "giella#ruhta" "giella#prošeakta#ruhta" "gollu" "guovtte#gielalašvuođa#ruhta" "haddi" 
"jahke#bušeahtta" "juolludeapmi" "juolludus" "kultur#mearre#ruhta" "lassi#ruhta" "liigudeapmi" "máksu" "mátkkoštan#gollu" 
"oahpaheddjiid#bálká"  "preassa#doarjja" "prošeakta#ruhta" "reantu" "ruhta" "ruošša#ruhta" "sáhkku" "sisa#boahtu" "speallo#ruhta" "stáhta#doaibma" "tienas" "veahkke#ruhta" "vealgi" "vearru" "vuoitu";

    # Ambiguous with respect to concreteness, either the symbolic amount or the concrete coins and bills

SET ABSTR-ENTITY = MONEY OR STATE OR OTHER-ABSTR-ENTITY ;

 
LIST GEN-CONCEPT = "anistupmi" "álgu" "áŋgirvuohta" "áigumuš" "árbe#vierru" "ávžžuhus" 
"ballu" "bálvaleapmi" "bálvalus#kvaliteahtta" "bargo#málle" "boađus" "dárbu" "dássi" "diehtu" "doaibma" "duođaštan#geatnegasvuohta" "duogaš" "eaiggátvuohta" "eallin#vuohki" "erohus" "evttohus" 
"fádda" "friddjavuohta" "fuolalašvuohta" "gaska#mearri" "gaska#oapmi" ("geargat" Der_vuohta) "geatnegasvuohta" "gelbbolašvuohta" ("gudnejahttit" Actio) "gudni" "guolle#bivdo#vuoigatvuohta" "hállu" "hástalus" "isitvuohta" 
"konflikta" "kontákta" "kultur#duogáš" "kultur#máhttu" "kvaliteahtta" "loahppa" "loatna#etymologiija" "lohpi" 
"máhttu" ("máŋgga#bealat" Der_vuohta) "miella" "mihttomearri" "mihtto#mearri" "molssa#eaktu" "muitu" "oame#dovdu" "oktavuohta" "olahahttivuohta" "ovda#mearka" "ovddas#vástádus" "ovtta#dássásašvuohta" "perspektiiva" 
"ráffi" "ráfi" "ráhkisvuohta" "rámma" "riekte#prinsihppa" "rolla" "sáme#giel#máhttu" "sáme#kultuvra" "sihkkarastin#strategiija" "strategiija" "šiehtadallan#fáddá" "symbola#systema" 
"ulbmil" "ustitvuohta" ("vanhurskkis" Der_vuohta) "váibmu" "váikkuhan#fápmu" "váikkuhus" "váldo#sivva" "vásáhus#duogáš" "vearrivuohta" "virge#lohpi" "vuordámuš" 
"bivdo#vuoigatvuohta" "geavahan#vuoigatvuohta" "guolástan#vuoigatvuohta" "jienastan#vuoigatvuohta" "eanangeavahan#vuoigatvuohta" "oamastan#vuoigatvuohta" "mearraguolle#vuoigatvuohta" "telten#vuoigatvuohta" "sierra#vuoigatvuohta" "murjen#vuoigatvuohta" "láigo#vuoigatvuohta" "láigohan#vuoigatvuohta" "bivdin#vuoigatvuohta""guohtun#vuoigatvuohta" "eananoamastan#vuoigatvuohta" "eanangeavahan#vuoigatvuohta" "vuođđo#vuoigatvuohta" ;
 
  # very abstract
  # Adding words to this set, consider if they suit to the SG-WORD-set as well. 
  
LIST MOD-CONCEPT = "eanandoalloálggahan#ulbmil" ;

    #for quite specified concepts, that has probably an effect on its potential to be modified.
    
LIST EMOTION = "gierisvuohta" "moraš" "ráhkisvuohta" "vašši" ;

   
LIST STRUCTURE = "álgu" "loahppa" "struktuvra" "maŋŋe#geahči" "lasáhus" "loahpa#geahči" "álgo#geahči" "álgo#oassi" "sis#doallu" "veršuvdna" ;

LIST PROPERTY = "burrodat" "fastivuohta" "hedjodat" "allodat" "gassodat" "kvaliteahtta" "sturrodat" "guhkkodat" "govdodat" "hápmi" "ivdni" "fearga" "dovdo#mearka" "ieš#vuohta" "viidodat" ;

LIST MOD-PROPERTY = "bálvalus#kvaliteahtta" ;

LIST IDEOLOGY = "buddhisma" "kommunisma" "osku" "sosial#darwinisma" ;

SET CONCEPT = GEN-CONCEPT OR STRUCTURE OR PROPERTY OR IDEOLOGY ;

  
LIST ACTIVITY = "aktivitehta" "báikenamma#dutkamuš" "boazo#doallo#dutkamuš" "čađaheapmi" "dearvvašvuođa#dutkan" "eallin#biras#dutkamuš" "fuolaheapmi" "geahčastat" "gille#dutkamuš" "guorahallan" "heahte#bargu" "loatna#dutkamuš" "lodden" "mátki" "návet#bargu" "sáme#dutkamuš" "sisa#fárren" "substráhta#dutkamuš" "šiehtadallan" ;

  # semantically comparable to Actio forms + lexicalized Actio forms.
  # probably change of state in the course of time
  
LIST PROCESS = "duodje#proseassa" "kárten#proseassa" "mearridan#proseassa" "mearridan#prosessa" "oahppo#proseassa" "revitaliseren#proseassa" ;

    # Reminds of time sets
    
LIST TOPIC = "areála#ášši" "áide#ášši" "bearrái#beahččo#ášši" "boazo#doallo#ášši" "B-#ášši" "buhtadus#ášši" "bušeahtta#gáržžidan#ášši"
"čázádat#huksen#ášši" "Čiekŋudan#fáddá" "čoahkkin#ášši" "digge#ášši" "doarjja#juohkin#ášši"
"eallin#ášši" "eana#mihtádus#ášši" "eaŋkal#ášši" "eanan#oastin#ášši" 
"giella#ášši" "girko#ášši" "gudne#rihkkun#ášši"  "guolle#ášši" "guovlo#gáhtten#ášši" "hálddašan#ášši" "huksen#ášši" "individuála#ášši" "juogadan#ášši" "Junkerdal#-ášši" "konsešuvdna#ášši"
"lassi#ášši" "luonddu#gáhtten#ášši"
"meroštan#ášši" "mudden#ášši"
"namma#logahallan"ášši" "nággo#ášši" 
"rádja#ášši" "ráfáiduhttin#ášši" "rávdnje#huksen#ášši" "riido#ášši" 
"sáme#ášši" "sis#buksa#ášši" "suohkan#stivrra#ášši" 
"plána#ášši" "riekte#ášši"  
"sáme#ášši" "sámi#ášši" "suopman#ášši" "váidda#ášši" "váidin#ášši" "váldo#ášši" "vearro#duottar#ášši" "vuoigatvuođa#ášši" "WTO-ášši" "1867#-ášši";

SET ABSTRACT = ABSTR-ENTITY OR CONCEPT OR ACTIVITY ;
 
  
LIST DILLI = "areála#dilli" "bargo#dilli" "biras#dilli" "boazo#dilli" "boazodoallo#dilli "čearddalašvuohta#dilli" "dilli" doaibma#dilli" "duopmoválde#dilli" "eaiggát#dilli" "eallin#dilli" "eallin-#dilli" "eanadoallo#dilli" "eanaeaiggát#dilli" "fápmo#dilli" "gaska#dilli" "geavahan#dilli" "giella#dilli" "háldo#dilli" "heahte#dilli" "lonohallan#dilli" "luonddu#dilli" "miella#dilli" "monopol#dilli" "náittos#dilli" "niestedábuhanheahte#dilli" "náittos#dilli" "oahpponeavvo#dilli" "oamasteaddji#dilli" "resurssa#dilli" "riekte#dilli" "riido#dilli" "ruhta#dilli" "seaktedábuhan#dilli" "sierra#dilli" "skuvla#dilli" "valljivuohta#dilli" "vuoigatvuođa#dilli" "šaddadan#dilli" ;

  # Likely to be locative in most contexts
  
LIST WEATHER-SITUATION = "beaivvádat" "bievla" "buolaš" "dálki" "dálke#dilálašvuohta" "fiertu" "goalki" "siivu" "jođádat" "liekkas" "linádat" "oppas" "riđđu" "muohtti" "ilbmi" "balva" "čuoika" "čoaskin" "biegga" "nuorttadat" "davádat" "oarjjádat" "luládat" "orjješ#biegga" "nuorta#biegga" "obba#dálki" "balva#dálki" "balva#ilbmi" "arvi" "savda" "savdaarvi" "liehmu" "láfu#biegga" "baján" "johtti" "gállu" "jiella" "hieibma" "šlahtti" "seaŋáš" "borga" "guoldu" "dobadat" "dulvi" "moarri" "geardni" "cuoŋu" "jealahas" "jalahas" "geasádat" "dálvvádat" "jáldu" "lievhnu" "galmma" "guostta" "čođđolat" "čođđálat" "sealádat" "šearádat" "bálgu" "bálggádat" ;

 # 

LIST OTHER-SITUATION = "áŧestus" ;

SET SITUATION = DILLI OR WEATHER-SITUATION ;

SET ACTOR-ROLE = HUMAN OR ORGANIZATION OR POLITICAL-PLACE OR EDUCATION ;
 # Institution: Restricting possible actor subjects.

LIST EVENT-TOOL-ACTIVITY = (Actio) "addin" "dearvvašvuođa#iskkadeapmi" "goddin" "hárjehallan" "jápmin" "ráđđádallan" "šiehtadallan" "vázzin" ;

LIST EVENT = "avádat#čoahkkin" "álbmot#čoahkkin" "ámtadigge#čoahkkin" "bargiid#čoahkkin" "bajimus#čoahkkin" "beassáš#márkan" "bismma#čoahkkin" "buohkaid#čoahkkin" "boazodoallo#šiehtadallan" "budjeahtta#čoahkkin" 
"cup" "čakča#márkan" "čoahkkin" "Čuoigan#cup" "dievas#čoahkkin" "digaštallan#čoahkkin" "digge#čoahkkin" "dutkan#čoahkkin" "erenoamáš#čoahkkin" "fáddá#čoahkkin" "feasta" "festivála" "fitnodat#čoahkkin"
"gieldda#válga" "girko#čoahkkin" "gitta#čoahkkin" "gozihan#čoahkkin" "gulaskuddan#čoahkkin" "guosse#čoahkkin" "gulaskuddan#čoahkkin" 
"headja" "hearge#gilvu" "jahke#čoahkkin" "joavko#čoahkkin" "joavko-#čoahkkin" "juovla#márkan" "juristta#čoahkkin" "konferánsa" "konsearta" "kursa" "lávde#gotte#čoahkkin" "loahppa#čoahkkin" "luodda#čoahkkin" "lávdegodde#čoahkkin" 
"máilmme#soahti" "mátki" "mearridan#proseassa" "miellahtto#čoahkkin" "ministtar#čoahkkin" "miellačájehan#čoahkkin" "miellahto#čoahkkin" "njunus#čoahkkin" "nominašuvdna#čoahkkin" "nášunal#čoahkkin" 
"ođđaorganiseren#čoahkkin" "oktavuohta#čoahkkin" "oktasaš#čoahkkin" "ovttasbargo#čoahkkin" "olgoriikaminister#čoahkkin" "olles#čoahkkin" "proseassa" 
"ráđđádallan#čoahkkin" "ráđđe#čoahkkin" "ráđđehus#čoahkkin" "ráhkkanan#čoahkkin" "ráhkkananstivra#čoahkkin" "riekte#čoahkkin" "riikka#čoahkkin" "ruhkos" 
"ságaškuššan#čoahkkin" "sáme#čoahkkin" "sámedigge#válga" "sáme#digge#válga" "Sámedigge#válga" "sáme#meašttir#gilvu" "Sámi#-meašttir#gilvu" "sáme#musihkka#festivála" "siida#čoahkkin" "soahti" "stivra#čoahkkin" "suokkardan#čoahkkin" 
"telefon#čoahkkin" 
"Varanger#festivála" "váldo#čoahkkin" "válga" "vuosttaldan#čoahkkin" "vuođđudan#čoahkkin" "váhnen#čoahkkin" "válga#čoahkkin" "vuosttaš#čájálmas" ;
 #XXX bad name, too general

SET ABSTR-PLACE = ORGANIZATION OR INSTITUTION OR EVENT OR EDUCATION OR INDUSTRY OR SITUATION ;

LIST ILLNESS = "albmasuoigi" "allergiija" "anemiija" "ástan#dávda" "árbe#dávda" "báhti" "bátne#várka" "bátne#vearka" "bárku" "bárko#dávda" "bárku#dávda" "bearri" "boazo#dávda" "boahkko#dávda" "boahkku" "boras#dávda" "buohcu" "buohcuvuohta" "buollán" "buozalmas" "čáhce#dávda" "čižže#boras#dávda" "čoavje#bávččas" "čoavje#bonjahat" "čoavje#dávda" "čotta#dávda" "dávda" "dohppehallan#dávda" "eksema" "fiskes#dávda" "fiskes#feber" "gárren#ávnnas" "gárrenávnnas#váttisvuohta" "gárren#dilli" "geahpes#dávda" "geahppes#dávda" "geahppes#vihki" "golgadan#dávda" "golgo#dávda" "golgo#vihki" "guolle#dávda" "infekšuvdna#dávda" "influensa" "jápmin#dávda" "juhkanvuohta" "lađas#dávda" "lađas#leasme#dávda" "leasme#dávda" "leasmi" "liike#dávda" "logahas#dávda" "luossa#dávda" "luhča#dávda" "mánáid#dávda" "mánno#dávda" "nisson#dávda" "njoammu#dávda" "nuorvu" "nuoskkes#dávda" "oaivvesvuohta" "obbon#dávda" "rabies#dávda" "ráŋka" "rohtto#dávda" "rohttu#dávda" "rohtu#dávda" "ruodnu" "skihpa" "časkásan#váddu" "searga#dávda" "sis#máhto#dávda" "sis#váddu" "skurbbet#dávda" "soga#dávda" "soga#váddu" "sohkar#dávda" "spánska#dávda" "speallan#dávda" "suohtta" "tuberkulosa#dávda" "varra#sonahat" "váddu" "vátne#dávda" "vihki" "virus#dávda" "vuolši" "vuorri" ;

# LIST ANIMAL-ILLNESS = "luossa#dávda" "vuorri" ;

# Sets denoting relations

LIST OASSI = "gonagas#oassi" "riika#oassi" "oassi" "teaksta#oassi" "váldo#oassi";
 
	# Might be useful for partitive constructions.	
	# Try to make a set of nouns wich not will be Gen in a AccGen string.
	
LIST HEADOFPARTS = "nisson#oassi" "oassi" "váldo#oassi" "bealli" "guhtemuš" "goappašat" "proseanta" "%" ;

  # This may be a better partitive set.	

# Miscellaneous sets
# ------------------
LIST Px = px1sg px2sg px3sg px1du px2du px3du px1pl px2pl px3pl ;

LIST PX1 = px1sg px1du px1pl ;

LIST PX2 = px2sg px2du px2pl ;

LIST PX3 = px3sg px3du px3pl ;

SET PXNOTSG1 = Px - PxSg1 ;
SET PXNOTSG2 = Px - PxSg2 ;
SET PXNOTSG3 = Px - PxSg3 ;

SET PXNOTDU1 = Px - PxDu1 ;
SET PXNOTDU2 = Px - PxDu2 ;
SET PXNOTDU3 = Px - PxDu3 ;

SET PXNOTPL1 = Px - PxPl1 ;
SET PXNOTPL2 = Px - PxPl2 ;
SET PXNOTPL3 = Px - PxPl3 ;

LIST POST-A = "rájes" ;
  
LIST POST-B = "rádjái" ;

LIST GASKAL = "gaskal" "gaskkal" "gaskii" "gaskka" "gaskkas" ;
 
 # p-positions that like coordination
 
LIST TIME-PREP = "badjel" "čađa" "earret" "gaskkal" "guovddáš" "maŋŋel" "maŋŋil" "miehtá" "ovdal" ;
 

SET NUMERALS = Num - OKTA ;

# this set does not contain ordinals, I am not sure if that is necessary.

SET NOT-NUMERALS = WORD - Num ;

LIST MANGA = "máŋga" "galle" ;
 # Not referred to by any rule.

SET CARDINALS = Num - Ord - MANGA ;

SET NOT-CC = WORD - CC ;

SET NOT-PCLE = WORD - Pcle ;

LIST COMPAR = "dávjjit" "eanet" "earalágan" "eará" "earret" "seammás" 
		"seammalágan" "seammalágán" "seammaláhkai";
 
 # These combine with "go" Pcle, but COMPAR stands for 'comparison' rather than
 # 'comparative'.

LIST CONTRA = "muhto" ;
 # In lean muitalan, muhto dál muitalan.

LIST PROSEANTA = "proseanta" "%" ;

SET REALCLB = CLB - COMMA ;

SET NOTCOMMA = WORD - COMMA ;

SET NOT-CAP-INITIAL-CC = WORD - CAP-INITIAL - CC ;

# Border sets and their complements
# ---------------------------------

SET CP = (pron itg) OR (prn rel) OR MO ;

 
LIST SEMICOL = "\;" ;

LIST COL = ":" ;

SET S-BOUNDARY  = (prn itg) OR (prn rel) OR ("muhto") OR MO OR ("\;") OR (":") OR ("-") OR ("–") OR CS ;
	# includes CP. Remember that (",") and CC are potential sentence boundaries, too

SET S-BOUNDARY1  = (prn itg) OR (prn rel) OR ("muhto") OR MO OR ("\;") OR (":") OR ("-") OR ("–") ;
	# includes not CS because of "go" in questions, before it is disambugated.
	
SET S-BOUNDARY2 = (prn itg) OR (prn rel) OR ("muhto") OR MO OR ("\;") OR (":") OR ("-") OR ("–") OR (@CVP) ;
 
	# includes CP
	# this one includes @CVP, the conjunction which actually connects two sentences (each with a finite verb) to each other, 
	# and not @CNP, which coordinates internal NP-/AdvP-/AP ... coordination
	# To be used only AFTER the disambiguation of @CVP and @CNP taking place in the chapter right before "Disambiguatig pronouns"

# S-BOUNDARY2 is used as barrier. When used as target, rather than as barrier,
# it includes BOS and EOS, and is given the names BOC and EOC (beginning and end of clause)

SET BOC = S-BOUNDARY OR BOS ;
SET BOC2 = S-BOUNDARY2 OR BOS ;
SET BOC-PUNCT = BOC - ("-") - ("–") ; 
SET EOC = S-BOUNDARY OR EOS ;
SET EOC2 = S-BOUNDARY2 OR EOS ;

SET NP-BOUNDARY = BOS OR EOS OR REALCLB OR VFIN OR Inf OR (Actio Ess) OR ConNeg OR VGen OR Sup OR PPRON-NOT-GEN OR Recipr OR Po OR Pr OR Pcle OR ("jed") OR Interj OR CS OR CP ;

SET APP-BOUNDARY = REALCLB OR VFIN OR Inf OR (Actio Ess) OR ConNeg OR VGen OR Sup OR Recipr OR Po OR Pr OR Pcle OR Interj OR CS OR CP ;
# A special barrier used with mapping of appositions. 

#SET SV-BOUNDARY = S-BOUNDARY OR Inf OR Sup OR V-MAIN ;

# To be used in mappingrules and before mapping because FMAINV-set contents @
SET SV-BOUNDARY = S-BOUNDARY OR Inf OR Sup OR V-MAIN - PrsPrc ;
 # VFIN-NOT-AUX ;
 # should be V-MAIN linked to VFIN-aux to the left. (cg-3)
# This set is ment to use in rules for disambiguating due to verbs or verbsets. It contents @.
SET SV-BOUNDARY2 = S-BOUNDARY2 OR FMAINV OR Inf OR Sup ;

SET SVF-BOUNDARY = S-BOUNDARY OR VFIN ;

# This set is ment to use in rules for disambiguating due to verbs or verbsets. 
# Here we search for either an S-BOUNDARY or a finite verb, either aux or main.

SET CCCOMMA = CC OR COMMA ;
	# remember that those are potential sentence boundaries, too

SET BOUNDARY = S-BOUNDARY OR NP-BOUNDARY ;
   # Note: This set is not in use.

SET INTR = Rel OR PUNCT-LEFT ;

	# interrupters
SET INTR-END = COMMA OR PUNCT-RIGHT ;

# Syntactic sets
# --------------

LIST ALLSYNTAG = (@+FAUXV) (@+FMAINV) (@-FAUXV) (@-FMAINV) (@-FSUBJ→)(@-FOBJ)(@-FADVL)(@→A) (@→ADVL) (@ADVL←) (@ADVL) (@HAB) (@→N) (@APP) (@APP-N←) (@APP-Pron←) (@APP→Pron) (@APP-Num←) (@APP-ADVL←) (@VOC) (@CNP) (@CVP) (@P←) (@→P) (@HNOUN) (@INTERJ) (@Pron<) (@OBJ) (@OBJ→) (@←OBJ) (@OPRED) (@←OPRED) (@OPRED→) (@SPRED←OBJ) (@PCLE) (@COMP-CS←) (@N←) (@SPRED) (@←SPRED) (@SPRED→) (@PPRED) (@Num←) (@SUBJ) (@←SUBJ) (@SUBJ→) (@X);
 

SET NON-APP = ALLSYNTAG - (@APP);

# SET ASSIGNEDSYN = ALLSYNTAG - @X ;


SECTION

# NOUNS
# =====

# luohkká 
# -------

# Default (if no other rule applies)
#SUBSTITUTE (N) (N S0) ("luohkká"ri N);
    # 

# S0: klássa vs. luohkka
SELECT ("klássa") (0 ("<luohkká>") + N) (*1 EDUCATION OR LESSON OR ("oahpaheaddji"));
    # 
SELECT ("klássa") (0 ("<luohkká>") + N) (*-1 EDUCATION OR LESSON OR ("oahpaheaddji"));
    # 
    
SELECT ("klássa") (0 ("<luohkká>") + N) (-1 Num);
    # Son lea vuosttaš luohkás.


# VERBS
# =====

# ráhkadit 
# --------

# Default (if no other rule applies)
#SUBSTITUTE (V TV) (V TV S0) ("ráhkadit"ri V);
    # Mun ráhkadan plána.
    # Mun ráhkadan ášši. - Mån ássjev dagáv. 

# S0: stiellit vs. dahkat
SELECT ("stiellit") (0 ("<ráhkadit>") + TV) (0 FMAINV)(*1 FOOD BARRIER NPNHA LINK 0 (@←OBJ));
    # Mun ráhkadan biepmu.
SELECT ("stiellit") (0 ("<ráhkadit>") + TV) (0 FMAINV)(*-1 FOOD BARRIER NPNHA LINK 0 (@→OBJ));
    # Mun biepmu ráhkadan.
 

# orrut 
# -----

# Default (if no other rule applies)
#SUBSTITUTE (V IV) (V IV S0) ("orrut"ri V);
    #  Orru jaska!
    
# S0: vuojnnet vs. (årrot)
SELECT ("vuojnnet") (0 ("<orrut>"i) + IV) (1 ("leat") LINK 0 Ess);
    # Orru leamen buorre.
SELECT ("vuojnnet") (0 ("<orrut>"i) + IV) (1 (@←SPRED));
    # Orru buorre.

## S1: årrot    
#SUBSTITUTE (V IV) (V IV S0) ("orrut"ri V) (*1 (@→P) BARRIER NPNH LINK 1 ("luhtte"));
#    # Orun ustiba luhtte.
#SUBSTITUTE (V IV) (V IV S0) ("orrut"ri V) (-1 ("luhtte") LINK -1 (@→P));
#    # Ustiba luhtte orun.
         

# eallit 
# ------

# Default (if no other rule applies)
#SUBSTITUTE (V IV) (V IV S0) ("eallit"ri V);
    #   
    
## S0: viessot vs. (iellet)
#SUBSTITUTE (V IV) (V IV S0) ("eallit"ri V) (*1 Loc LINK NOT 0 PLACE OR HUMAN BARRIER NPNH);
#    # Dálvet eallá boazu energivallji jeagelšattuiguin.
#    SUBSTITUTE (V IV) (V IV S0) ("eallit"ri V) (-1 Loc LINK NOT 0 PLACE OR HUMAN);
#    # Dálvet boazu energivallji jeagelšattuiguin eallá.
#SUBSTITUTE (V IV) (V IV S0) ("eallit"ri V) (*-1 ("mo") OR ("movt") OR ("mot") BARRIER PRE-NP-HEAD LINK 1 NP-HEAD-NOM);
#    # Mo don ealát?

# S1: iellet (åndelig)    
SELECT ("iellet") (0 ("<eallit>"i) + IV) (1 ("agálaččat"));
    # Son eallá agálaččat.
SELECT ("iellet") (0 ("<eallit>"i) + IV) (-1 ("agálaččat"));
    # Son agálaččat eallá.
    
    
#viessot seksualitehta/identitehta
#Sij barggi juohkkahattjaj riektáj åvdås, iehtjasa seksuálitehta milta viessot.

# muitalit 
# --------

#SUBSTITUTE (V TV) (V TV S0) ("muitalit"ri V);
    # Default
    
# S0: mujttalit (vs. subtsastit)   
 
SELECT ("mujttalit") (0 ("<muitalit>") + TV) (*1 (@OBJ) BARRIER NPNH LINK 0 ("máinnas") OR ("muitalus") OR ("suvccas") OR ("cuvccas") );
    # Son muitala máidnasiid.
    # 

    
    
# ADJECTIVES
# ==========

# buorre 
# ------    

#SUBSTITUTE (A) (A S0) ("buorre"ri A);
    # Default
    
# S0: jasskat (vs. buorre)    
SELECT ("jasskat") (0 ("<buorre>") + A) (0 Attr)(1 ("iešdovdu") OR ("oamedovdu") OR ("referánsaeaktu"));
    # Giella lea mearrideaddji oassi addin dihte buori iešdovddu.


# čeahppi 
# -------
    
# S0: smidá (vs. tjiehppe)    
#SUBSTITUTE (A) (A S0) ("čeahppi"ri A);
    # Son lea čeahppi.
    
#SUBSTITUTE (A) (A S1) ("čeahppi"ri A) (1 Inf LINK 0 ("borrat") OR ("juhkat"));
SELECT ("tjiehppe") (0 ("<čeahppi>") + A) (1 Inf LINK 0 ("borrat") OR ("juhkat"));
    # Son lea čeahppi borrat.
    # subsistence words where it is not the talent that is stressed
    

# boaris 
# ------ 

# S0: vuoras
#SELECT ("vuoras") (0 ("<boaris>"i) + A + Attr) (1C HUMAN OR ANIMAL);
#SELECT ("vuoras") (0 ("<boaris>"i) + A + @←SPRED) (*-1 REALCOPULAS LINK *-1 (@SUBJ→) LINK 0 HUMAN OR ANIMAL OR (Pron Pers) LINK NOT 0 ("dat"ri));

# S1: boares

SELECT ("boares") (0 ("<boaris>"i) + A + Attr) (*1 N BARRIER NOT-Attr LINK NOT 0 HUMAN OR ANIMAL);
SELECT ("boares") (0 ("<boaris>"i) + A + @←SPRED) (*-1 REALCOPULAS LINK *-1 (@SUBJ→) LINK 0 ("dat"ri));
    # Dat lea boaris.
SELECT ("boares") (0 ("<boaris>"i) + A + @←SPRED) (*-1 REALCOPULAS LINK *-1 (@SUBJ→) LINK NOT 0 HUMAN OR ANIMAL OR (Pron Pers));

# S2: boares
SELECT ("oames") (0 ("<boaris>"i) + A + Attr) (0 WORD LINK *1 ("ođđa" A Attr));
    # Boares dilli lea vássán, o@@a dilli lea boahtán.

SELECT ("oames") (0 ("<boaris>"i) + A + Attr) (1 N LINK 0 FOOD);
SELECT ("oames") (0 ("<boaris>"i) + A + @←SPRED) (*-1 REALCOPULAS LINK *-1 (@SUBJ→) LINK 0 FOOD);

SELECT:fallback ("boares") (0 ("<boaris>") + A);


# ADVERBS
# =======

# hui
# ---

# S0: sieldes
#SUBSTITUTE (Adv) (Adv S0) ("hui"ri Adv) (1C A);
    # Dat lea hui buorre.
# S1: huj
SELECT ("huj") (0 ("<hui>") + Adv) (1C Attr);
    # Son lea hui čeahppes eadni.



# láhkái
# ------

#SUBSTITUTE (Adv) (Adv S0) ("láhkái"ri Adv);
    # Sáme kultuvrra, giella ja æládusdåjma li moatte láhkáj gárttjásin ja dætto vuolen stuorra sebrudagás.
    
# S1: muoduk (vs. láhkáj)   (láhkái/ládje) 
SELECT ("muoduk") (0 ("<láhkái>") + Adv) (-1 Gen);
    # Son lea áhčis láhkái.
    # Vuojnnebihtit gen muoduk le?

    

# jámas 
# -----

# S0: default
# fin.verb (obj) jámas; jámas fin.verb
#SUBSTITUTE (Adv) (Adv S0) ("jámas"ri Adv);
    # Default
    # Guovža lei gievra, ja sáhtii fáđustii olbmo jámas.
    # jámas goallot

# S1: sælldát (metaphorical sense)
# Jámas means dead (adv.) an is used in a metaphorical sense in sme but not smj
# adv verb: leat (Pron.Refl/Adv) jámas PrfPrc
# verb adv: PrfPrc (Adv) jámas

SELECT ("sælldát") (0 ("<jámas>") + Adv) (*-1 PSYCH-V BARRIER NOT-ADV-PCLE-Refl);
    # Man gallis dain smávvásiin eai leat juo čirron iežaset jámas.
SELECT ("sælldát") (0 ("<jámas>") + Adv) (*1 PSYCH-V BARRIER NOT-ADV-PCLE-Refl);
    # Eará bellodagat leat jámas suorganan válgagiččus.

# jaska 
# ----- 

#SUBSTITUTE (Adv) (Adv S0) ("jaska"ri Adv);
    # Default
   
# S1: jasska (vs. sjávot)    
SELECT ("jasska") (0 ("<jaska>"i) + Adv) (*1 ("bargat") OR ("boahtit"));
    # 


SELECT:fallback ("luohkka") (0 ("<luohkká>") + N);
SELECT:fallback ("buorre") (0 ("<buorre>") + A);
SELECT:fallback ("smidá") (0 ("<čeahppi>") + A);
SELECT:fallback ("sieldes") (0 ("<hui>") + Adv);
SELECT:fallback ("sjávot") (0 ("<jaska>") + Adv);
SELECT:fallback ("jámás") (0 ("<jámas>") + Adv);
SELECT:fallback ("láhkáj") (0 ("<ládje>") + Adv);
SELECT:fallback ("láhkáj") (0 ("<láhkái>") + Adv);
SELECT:fallback ("viessot") (0 ("<eallit>") + V);
SELECT:fallback ("subtsastit") (0 ("<muitalit>") + V);
SELECT:fallback ("årrot") (0 ("<orrut>") + V);
SELECT:fallback ("dahkat") (0 ("<ráhkadit>") + V);
