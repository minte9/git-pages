#!/bin/sh

: "Commit reset
Reset soft - modifications remain in staging
Reset normal - modifications are removed from staging
Reset hard - modifications are removed, but remains in gargage
You can get the commit back as long as it was within a few days
"

. "../../aliases.sh"

touch a.txt     ; echo "touch"    ; gsp
git add .       ; echo "git add"  ; gsp
                  echo "git commit"
git commit -m 'First commit' | tab2lines
                  echo "git last log"
git log -n 1 --oneline | tab2lines
                  echo "Reset soft ~1"
git reset --soft HEAD~1 ; gsp ; gc
                  echo "Reset ~1"
git reset HEAD~1 ; gsp; gc
                  
git rm -f a.txt > /dev/null # Repo clean up