#!/bin/sh

: "Difference beetwen file modficiation and its last commit
"

. "../../aliases.sh"

echo "1" > a.txt

echo "git add"          ; git add .                     ; gsp
echo "git commit"       ; git commit -m 'My commit'     | tab2lines
echo "git last log"     ; git log -n 1 --oneline        | tab2lines 

echo "2" >> a.txt
git diff HEAD^ a.txt
                  
git rm -f a.txt > /dev/null