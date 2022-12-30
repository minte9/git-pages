#!/bin/sh

: "Restore
Helps to unstage or even discard uncommitted local changes
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt b.txt                 ; gsp
echo "git add"              ; git add .                         ; gsp
echo "git restore"          ; git restore --staged a.txt b.txt  ; gsp

rm a.txt
rm b.txt