#!/bin/sh

: "Restore
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt                   
echo "git add"              ; git add .                     ; gs

echo "git rm"               ; git rm a.txt                  ; gs
echo "git restore --staged" ; git restore --staged a.txt    ; gs
echo "git restore"          ; git restore a.txt             ; gs

echo "git commit"           ; git commit -m 'm'             | tab2lines

git rm -f a.txt
