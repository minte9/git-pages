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

git log -n 3 --oneline

git rm a.txt b.txt > /dev/null
git commit -am > /dev/null