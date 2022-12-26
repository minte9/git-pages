#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo "touch / Working tree:"      ; gsp
git add .
git commit -m 'first' --verbose

touch b.txt     ; echo "touch / Working tree:"      ; gsp
git add .
git commit -m 'second' > /dev/null       ; echo "git commit / Repository:"   ; gs

echo "git log /"
git log -n 2 --oneline

git rm a.txt > /dev/null
git rm b.txt > /dev/null