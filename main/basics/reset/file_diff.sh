#!/bin/sh

: "Difference beetwen file modficiation and its last commit
"

. "../../aliases.sh"

echo "abc" > "myfile.tmp"

echo "git add"          ; git add .                     ; gsp
echo "git commit"       ; git commit --oneline -m 'My commit'     | tab2lines

echo "yyy" >> "myfile.tmp"
echo "git diff"         ; git diff HEAD^ "myfile.tmp"   | tab2lines
                  
git rm -f "myfile.tmp" > /dev/null