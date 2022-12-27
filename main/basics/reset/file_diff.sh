#!/bin/sh

: "git diff
Differences beetwen file modficiations and its commits
HEAD    / refers to current commit
HEAD^   / refers to the commit before the current commit
"

. "../../aliases.sh"

echo "touch"                ; touch myfile.tmp  ; gsp   
echo "write"                ; echo "A" > myfile.tmp ; gsp
echo "git commit"           ; gc ; gs

echo "overwrite"            ; gsp
echo "B" > myfile.tmp
echo "C" >> myfile.tmp      ; gs
echo "git diff"             ; git diff HEAD myfile.tmp  | tab2lines

git rm -f myfile.tmp > /dev/null