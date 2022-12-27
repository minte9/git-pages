#!/bin/sh

: "Difference beetwen file modficiation and its last commit
"

. "../../aliases.sh"

echo "touch & write"        ; touch myfile.tmp     
echo "1" > myfile.tmp       ; gsp
echo "git add"              ; git add . ; gsp

echo "write again"
echo "2" > "myfile.tmp"
echo "git diff"             ; git diff HEAD^ HEAD --color-words "myfile.tmp"   | tab2lines
                  
git rm -f "myfile.tmp" > /dev/null