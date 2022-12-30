#!/bin/sh

: "Restore
Helps to unstage or even discard uncommitted local changes
To undo a commit use git checkout
"

. "../../aliases.sh"

echo "touch"            ; touch X Y                 ; gsp
echo "git add"          ; git add .                 ; gsp
echo "git restore a"    ; git restore --staged X    ; gsp
echo "git commit"       ; gc                        ; gsp
echo "git checkout b"   ; git reset HEAD~1 Y         ; gc ; gsp  

rm X
rm Y