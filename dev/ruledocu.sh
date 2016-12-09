echo 'Documenting choose-parts in macros' > doculist

egrep '(<def-macro|"M\[)' apertium-sme-smj.sme-smj.t1x |cut -d '"' -f2 |sed 's/^/¢/' |sed 's/¢M/M/' |tr '¢' '\n' >> doculist
echo ' ' >> doculist
echo ' ' >> doculist

echo 'Rules:' >> doculist

grep 'rule c.*\[' apertium-sme-smj.sme-smj.t1x | grep -v '^<\!' |cut -d '"' -f2   > rules
echo 'Rules for verbals:' >> doculist
grep '\-V ' rules |rev | sort | rev >> doculist
echo ' ' >> doculist
echo 'Rules for predicates:' >> doculist
grep '\-PRED ' rules |rev | sort | rev >> doculist
echo ' ' >> doculist
echo 'Rules for adjectives:' >> doculist
grep '\-A ' rules |rev | sort | rev >> doculist
echo ' ' >> doculist
echo 'Rules for bare nouns and pronouns:' >> doculist
grep '\-N ' rules |rev | sort | rev >> doculist
echo ' ' >> doculist
echo 'Rules for noun phrases:' >> doculist
grep '\-NP ' rules |rev | sort | rev >> doculist
echo ' ' >> doculist
echo 'Rules for numeral expressions:' >> doculist
grep '\-NUM ' rules |rev | sort | rev >> doculist
echo ' ' >> doculist
echo 'Rules for adverbs:' >> doculist
grep '\-ADV ' rules |rev | sort | rev >> doculist
echo ' ' >> doculist
echo 'Rules for P phrases:' >> doculist
grep '\-PP ' rules |rev | sort | rev >> doculist
echo ' ' >> doculist
echo 'Rules for other phrases:' >> doculist
grep '\-PHR ' rules |rev | sort | rev >> doculist
echo ' ' >> doculist
echo 'Small word classes:' >> doculist
grep '\-PCLE ' rules |rev | sort | rev >> doculist
grep '\-CC ' rules |rev | sort | rev >> doculist
grep '\-CS ' rules |rev | sort | rev >> doculist
grep '\-IJ ' rules |rev | sort | rev >> doculist
echo ' ' >> doculist
echo 'Technical things:' >> doculist
grep '\-T ' rules |rev | sort | rev >> doculist
see doculist
