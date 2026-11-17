#!/bin/bash
# Lance tous les exercices du TP3
flex 0.l   && gcc lex.yy.c -o ex0 -lfl && echo "== I.1 a" && ./ex0 < 0.dat
for p in b1:0.dat b2:0.dat i2:c.dat i3a:a.dat i3b:b.dat i3c:c3.dat i3d:d.dat; do
    n=${p%%:*}; t=${p#*:}
    flex $n.l && gcc lex.yy.c -o ex$n && echo && echo "== $n sur $t" && ./ex$n < $t
done
