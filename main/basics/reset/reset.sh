#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo "touch / Working tree;"    ; gsp
git add .       ; echo "git add / Staging area"  ; gsp
                  echo "git commit /"
git commit -m 'First commit' | ltab
                  echo "git log / Show first:"
git log -n 1 --oneline | ltab
                  echo "Reset soft ~1/ Staging area:"
git reset --soft HEAD~1 ; gsp
                  echo "Reset ~1/ Staging area:"
git reset HEAD~1 ; gsp
                  echo "Repo clean up"
git commit -m 'm' --quiet
git rm a.txt > /dev/null