#!/bin/sh

: "Difference beetwen file modficiations and its last commit
"

. "../../aliases.sh"

echo "touch"                ; touch myfile.tmp  ; gsp   
echo "write"                ; echo "A" > myfile.tmp ; gsp
echo "git commit"           ; gc : gsp

echo "overwrite"
echo "B" > "myfile.tmp"
echo "C" >> "myfile.tmp" : gsp
echo "git diff"             ; git diff HEAD^  "myfile.tmp"   | tab2lines

git rm -f "myfile.tmp" > /dev/null