#!/bin/sh

: "Difference beetwen file modficiation and its last commit
"

. "../../aliases.sh"

echo "abc" > "myfile.tmp"

echo "git add"          ; git add .                     ; gsp
echo "git commit"       ; git commit -m 'My commit'     | tab2lines

echo "yyy" >> "myfile.tmp"
git diff HEAD^ "myfile.tmp"
                  
git rm -f "myfile.tmp" > /dev/null