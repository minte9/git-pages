#!/bin/sh

: "Difference beetwen file modficiation and its last commit
"

. "../../aliases.sh"

echo -n "1" > "myfile.tmp"

echo "git add"          ; git add .                     ; gsp
echo "git commit"       ; git commit --quiet -m 'My commit'
echo "git last log"     ; git log -n 1 --oneline        | tab2lines 

echo "2" >> "myfile.tmp"
git diff --color HEAD^ "myfile.tmp"
                  
git rm -f "myfile.tmp" > /dev/null