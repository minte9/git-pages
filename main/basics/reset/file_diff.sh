#!/bin/sh

: "Difference beetwen file modficiation and its last commit
"

. "../../aliases.sh"

echo -n "1" > "myfile.tmp"

echo "git add"          ; git add .                     ; gsp
echo "git commit"       ; git commit -m 'My commit'     | tab2lines
echo "git last log"     ; git log -n 1 --oneline        | tab2lines 

echo "2" >> "myfile.tmp"
git diff HEAD^ "myfile.tmp" --oneline
                  
git rm -f "myfile.tmp" > /dev/null