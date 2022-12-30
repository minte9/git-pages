#!/bin/sh

: "Restore
Helps to unstage or even discard uncommitted local changes
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt                   ; gsp
echo "git add"              ; git add .                     ; gsp
echo "git restore"          ; git restore --staged a.txt    ; gsp

rm a.txt