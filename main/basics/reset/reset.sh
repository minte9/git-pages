#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo "touch / Working tree;"    ; gsp
git add .       ; echo "git add / Staging area"  ; gsp

echo "git commit /"
git commit -m 'First commit' | sed 's/^/\t/' ; echo

echo "git log / Show first:"
git log -n 1 --oneline | sed 's/^/\t/' ; echo

echo "Reset soft / Staging area:"
git reset --soft HEAD~1 ; gsp

git commit -m 'm' --quiet
git rm a.txt > /dev/null