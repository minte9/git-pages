#!/bin/sh

: "Remove
"

. "../../aliases.sh"

echo "touch"            ; touch a.txt                   ; gsp
echo "git add"          ; git add .                     ; gsp
echo "git commit"       ; git commit -m 'm'             | tab2lines

echo "git rm"           ; git rm a.txt                  ; gs
echo "checkout"         ; git checkout -- a.txt         ; gc ; gsp
echo "git commit"       ; git commit -am 'm'            | tab2lines

git rm -f a.txt > /dev/null