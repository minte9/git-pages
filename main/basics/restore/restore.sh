#!/bin/sh

: "Restore to unstage
Reset (or checkout) to undo commits
"

. "../../aliases.sh"

echo "touch"            ; touch X Y                 ; gsp
echo "git add"          ; git add .                 ; gsp
echo "git restore X"    ; git restore --staged X    ; gsp
echo "git commit"       ; gc                        ; gsp
echo "git reset Y"      ; git reset HEAD^ Y         ; gc ; gsp  

rm X
rm Y