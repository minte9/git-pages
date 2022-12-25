#!/bin/sh

: "Removing files from repository

If a file is not tracked rm file will generate error
To remove a file and keep it in working directory, use --cached
To remove a file from working directory, when used with -f
Reset unstages a staged file
"

alias gsp="git status --porcelain | sed 's/^/\t/'"
alias gs="git status | sed 's/^/\t/'"

touch a.txt                     ; git status --porcelain
git add a.txt                   ; git status --porcelain
git rm --cached a.txt           ; git status --porcelain 
#git rm a.txt > /dev/null        ; git status --porcelain