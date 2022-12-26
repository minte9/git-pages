#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo "touch /"    ; gsp
git add .       ; echo "git add /"  ; gsp
git commit -m 'First commit'; echo

echo "Log"
git log -n 2 --oneline : echo

echo "Reset"
git reset --soft HEAD~1 ; gsp

git commit -m 'Commit reset' --quiet
git rm a.txt > /dev/null