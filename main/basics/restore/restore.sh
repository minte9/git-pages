#!/bin/sh

: "Restore
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt           ; gsp
echo "git add"              ; git add .             ; gsp
echo "git rm --cached"      ; git rm --cached a.txt       | tab2lines
echo "git status"           ; gs

gc