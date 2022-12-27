#!/bin/sh

: "Difference beetwen file modficiation and its last commit
"

. "../../aliases.sh"

echo "touch & write"        ; echo "abc" > "myfile.tmp" ; gsp
echo "git add"      ; git add .                 ; gsp

echo "yyy" >> "myfile.tmp"
echo "git diff"         ; git diff HEAD^ "myfile.tmp"   | tab2lines
                  
git rm -f "myfile.tmp" > /dev/null