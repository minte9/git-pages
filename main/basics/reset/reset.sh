#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo -n "touch / " ; gsp
git add .      ; echo -n "git add / " ; gsp
git commit -m 'First commit' --quiet

echo "git log /"
git log -n 2 --oneline

git reset --soft HEAD~1 ; gsp
git log -n 2 --oneline
git commit -m 'm' --quiet

git rm a.txt > /dev/null