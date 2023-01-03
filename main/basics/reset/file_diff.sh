#!/bin/sh

: "git diff
Differences beetwen file modficiations and its commits
HEAD    / refers to current commit
HEAD^   / refers to the commit before the current commit
"

. "../../aliases.sh"

touch myfile.tmp
    echo "touch"
    gsp

echo "write"                ; echo "A" > myfile.tmp     ; gsp
echo "git add + commit"     ; gc ; gs

echo "overwrite"            ; echo "B" > myfile.tmp     ; gsp
echo "write"                ; echo "C" >> myfile.tmp    ; gsp
echo "git diff"             ; git diff HEAD myfile.tmp  | tab2lines

git add .
git commit -qm 'm'
    echo "git commit"
    gs

git rm -f a.txt > /dev/null