#!/bin/sh

: "Difference beetwen file modficiation and its last commit
"

. "../../aliases.sh"

echo "touch & write"        ; touch myfile.tmp     
echo "A" > myfile.tmp       ; gsp
echo "git add"              ; git add . ; gsp

echo "write"
echo "B" > "myfile.tmp"
echo "git diff"             ; git diff HEAD^  "myfile.tmp"   | tab2lines

git rm -f "myfile.tmp" > /dev/null