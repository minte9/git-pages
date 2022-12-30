#!/bin/sh

: "Restore
Helps to unstage or even discard uncommitted local changes
"

. "../../aliases.sh"

echo "touch"                ; touch a.txt b.txt                 ; gsp
echo "git add"              ; git add .                         ; gsp
echo "git restore a"          ; git restore --staged a.txt        ; gsp

echo "git commit"           ; gc ; gsp

echo "git checkout b"         ; git reset HEAD^1 b.txt ; gc ; gsp  # undo commit


rm a.txt
rm b.txt