#!/bin/sh

: "Restore
"

. "../../aliases.sh"

echo "touch"                ; touch b.txt                   ; gs
echo "git add"              ; gc                   ; gs

echo "git rm"               ; git rm b.txt                  ; gsp
echo "git restore --staged" ; git restore --staged b.txt    ; gsp
echo "git restore"          ; git restore b.txt             ; gs

git rm -f b.txt ; gc ; gs