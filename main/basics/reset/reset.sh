#!/bin/sh

: "
"

. "../../aliases.sh"

touch a.txt     ; echo "touch"    ; gsp
git add .       ; echo "git add"  ; gsp
                  echo "git commit"
git commit -m 'First commit' | tab2lines
                  echo "git last log"
git log -n 1 --oneline | tab2lines
                  echo "Reset soft ~1"
git reset --soft HEAD~1 ; gsp ; gacq
                  echo "Reset ~1"
git reset HEAD~1 ; gsp ; gcq
                  
git rm -f a.txt > /dev/null