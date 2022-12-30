#!/bin/sh

: "Restore
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt           ; gsp
echo "git add"              ; git add .             ; gsp
echo "git rm --cached"      ; git rm --cached --quiet a.txt | tab2lines | gs
echo "git restore --staged" ; git restore --staged a.txt | tab2lines | gs

rm a.txt
rm b.txt

gc