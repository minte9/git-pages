#!/bin/sh

: "Restore
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt                   ; gsp
echo "git add"              ; git add .                   ; gsp

echo "git rm "      ; git rm -f a.txt    ; gsp

#echo "git rm --cached"      ; git rm  --cached a.txt    ; gsp
#echo "git restore --staged" ; git restore --staged a.txt    ; gsp
#echo "git restore"          ; git restore a.txt             ; gs