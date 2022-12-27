#!/bin/sh

: "Difference beetwen file modficiation and its last commit
"

. "../../aliases.sh"

echo -n "abc" > "myfile.tmp"

echo "git add"          ; git add .                     ; gsp
echo "git commit"       ; git commit --quiet -m 'My commit'

echo "yyy" >> "myfile.tmp"
git diff --color HEAD^ "myfile.tmp"
                  
git rm -f "myfile.tmp" > /dev/null