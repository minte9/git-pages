#!/bin/sh

: "Difference beetwen file modficiation and its last commit
"

. "../../aliases.sh"

echo "abc" > "myfile.tmp"

echo "git add"          ; git add .                     ; gsp
echo "git commit"       ; git commit --quiet -m 'My commit'

echo "yyy" >> "myfile.tmp"
exit 0
git diff HEAD^ "myfile.tmp"
                  
git rm -f "myfile.tmp" > /dev/null