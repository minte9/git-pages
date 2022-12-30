#!/bin/sh

: "Restore
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt           ; gsp
echo "git add"              ; git add .             ; gsp
echo "git rm -f"            ; git rm -f a.txt       | tab2lines
echo "git status"           ; gs

echo "touch"                ; touch b.txt           ; gs
echo "git add"              ; git add .             ; gs
echo "git rm --cached"      ; git rm --cached b.txt | tab2lines

echo "git commit"           ; gc
echo "git status"           ; gsp
echo "git restore --staged" ; git restore --staged b.txt | tab2lines | gs

git rm -f b.txt > /dev/null

#echo "git rm --cached"      ; git rm  --cached a.txt    ; gsp
#echo "git restore --staged" ; git restore --staged a.txt    ; gsp
#echo "git restore"          ; git restore a.txt             ; gs