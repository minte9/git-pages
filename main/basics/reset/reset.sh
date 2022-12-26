#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo "touch / "      ; gsp
git add .      ; echo "git add / " ; gsp
git commit -m 'First commit' --quiet

echo "git log /"
git log -n 2 --oneline

git rm a.txt > /dev/null