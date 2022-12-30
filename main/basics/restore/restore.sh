#!/bin/sh

: "Restore
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt                   ; gs
echo "git add"              ; git add  .                    ; gs

echo "git rm"               ; git rm a.txt                  ; gsp
echo "git restore --staged" ; git restore --staged a.txt    ; gsp
echo "git restore"          ; git restore a.txt             ; gs

echo "git commit"           ; git commit -am 'm'             | tab2lines

git rm -f a.txt ; gc ; gs