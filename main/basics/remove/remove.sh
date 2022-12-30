#!/bin/sh

: "Remove
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt                   ; gsp
echo "git add"              ; git add .                     ; gsp
echo "git commit"           ; git commit -m 'm'             | tab2lines

echo "git rm"               ; git rm a.txt                  ; gsp
echo "git restore --staged" ; git restore --staged a.txt    ; gsp
echo "git restore"          ; git restore a.txt             ; gs
