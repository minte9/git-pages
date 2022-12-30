#!/bin/sh

: "Remove
"

. "../../aliases.sh"

echo "touch"            ; touch a.txt                   ; gsp
echo "git add"          ; git add .                     ; gsp
echo "git commit"       ; git commit -m 'My commit'     | tab2lines

echo "rm"               ; rm a.txt                      ; gsp
echo "checkout"         ; git checkout -- a.txt         ; gsp
                  
git rm -f a.txt > /dev/null