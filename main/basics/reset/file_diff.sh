#!/bin/sh

: "git diff
Differences beetwen file modficiations and its commits
HEAD    / refers to current commit
HEAD^   / refers to the commit before the current commit
"

. "../../aliases.sh"

touch myfile
    echo "touch"
    gsp

echo "A" > myfile.tmp   
    echo "write A"
    gsp 

git add .
git commit -qm 'm'
    echo "git commit"
    gs
    
echo "overwrite"            ; echo "B" > myfile.tmp     ; gsp
echo "write"                ; echo "C" >> myfile.tmp    ; gsp
echo "git diff"             ; git diff HEAD myfile.tmp  | tab2lines

git add .
git commit -qm 'm'
    echo "git commit"
    gs

git rm -f myfile.tmp > /dev/null