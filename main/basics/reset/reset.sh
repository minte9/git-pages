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

git rm a.txt b.txt > /dev/null ; echo "git rm / Repository:"       ; gsp