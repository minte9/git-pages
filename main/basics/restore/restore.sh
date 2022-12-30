#!/bin/sh

: "Restore
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt                   ; gs
echo "git add"              ; git add .                   ; gs

echo "git rm --cached"  ; git rm  --cached a.txt                  ; gsp
echo "git restore --staged" ; git restore --staged a.txt    ; gsp
echo "git restore"          ; git restore a.txt             ; gs