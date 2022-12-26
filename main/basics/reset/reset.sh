#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo "touch / Status:"    ; gsp
git add .       ; echo "git add / Status:"  ; gsp
                  echo "git commit /"
git commit -m 'First commit' | tab2lines
                  echo "git log / Last:"
git log -n 1 --oneline | tab2lines
                  echo "Reset soft ~1 / Status:"
git reset --soft HEAD~1 ; gsp
                  echo "Reset ~1 / Status:" ; gcq
git reset HEAD~1 ; gsp
                  echo "Repo clean up" ; gcq
git rm a.txt > /dev/null