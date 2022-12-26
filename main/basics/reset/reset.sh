#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo "touch / "      ; gsp
git add .      ; echo "git add / " ; gsp
git commit -m 'First commit' --quiet

echo "git log /"
git log -n 2 --oneline

git reset --soft HEAD~1
git log -n 2 --oneline
git commit -m 'm' --quiet

git rm a.txt > /dev/null