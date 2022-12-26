#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo "touch / Working tree;"    ; gsp
git add .       ; echo "git add / Staging area"  ; gsp
                  echo "git commit /"
git commit -m 'First commit' | tab2lines
                  echo "git log / Show last log:"
git log -n 1 --oneline | tab2lines
                  echo "Reset soft ~1 / Staging area:"
git reset --soft HEAD~1 ; gsp
                  echo "Reset ~1 / Working:" ; gcq
git reset HEAD~1 ; gsp
                  echo "Repo clean up" ; gcq
git rm a.txt > /dev/null