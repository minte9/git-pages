#!/bin/sh

: "Difference beetwen file modficiation and its last commit
"

. "../../aliases.sh"

echo "touch & write"        ; touch myfile.tmp     
echo "<title>A</title>" > myfile.tmp       ; gsp
echo "git add"              ; git add . ; gsp

echo "write again"
echo "<title>B</title>" > "myfile.tmp"
echo "git diff"             ; git diff HEAD^ --color-words "myfile.tmp"   | tab2lines
                  
git rm -f "myfile.tmp" > /dev/null