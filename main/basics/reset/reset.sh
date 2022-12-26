#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo "touch:"    ; gsp
git add .       ; echo "git add:"  ; gsp
                  echo "git commit"
git commit -m 'First commit' | tab2lines
                  echo "git last log:"
git log -n 1 --oneline | tab2lines
                  echo "Reset soft ~1:"
git reset --soft HEAD~1 ; gsp
                  echo "Reset ~1" ; gcq
git reset HEAD~1 ; gsp
                  echo "Repo clean up" ; gcq
git rm a.txt > /dev/null