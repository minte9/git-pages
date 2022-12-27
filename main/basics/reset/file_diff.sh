#!/bin/sh

: "Difference beetwen file modficiations and its last commit
"

. "../../aliases.sh"

echo "touch"                ; touch myfile.tmp     
echo "write"                ; echo "A" > myfile.tmp
echo "git add"              ; git add .
echo "git commit"           ; gsp

echo "overwrite"
echo "B" > "myfile.tmp"
echo "C" >> "myfile.tmp"
echo "git diff"             ; git diff HEAD^  "myfile.tmp"   | tab2lines

#git rm -f "myfile.tmp" > /dev/null