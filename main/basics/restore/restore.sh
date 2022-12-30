#!/bin/sh

: "Restore
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt           ; gsp
echo "git add"              ; git add .             ; gsp
echo "git rm --cached"      ; git rm --cached --quiet a.txt | tab2lines | gsp

echo "git add"              ; git add .             ; gs
echo "git commit"           ; gc ; gs
echo "git rm --cached"      ; git rm --cached a.txt | tab2lines
echo "git status"           ; gsp

rm a.txt
rm b.txt

gc