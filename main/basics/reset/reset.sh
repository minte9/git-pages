#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo "touch / Working tree:"      ; gsp
git add .
git commit -m 'first' > /dev/null       ; echo "git commit / Repository:"   ; gs

touch b.txt     ; echo "touch / Working tree:"      ; gsp
git add .
git commit -m 'second' > /dev/null       ; echo "git commit / Repository:"   ; gs

git log -n --oneline

git rm a.txt > /dev/null
git rm b.txt > /dev/null