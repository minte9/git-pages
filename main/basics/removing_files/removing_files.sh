#!/bin/sh

: "Removing files from repository

If a file is not tracked rm file will generate error
To remove a file and keep it in working directory, use --cached
To remove a file from working directory, when used with -f
Reset unstages a staged file
"

alias gsp="git status --porcelain | sed 's/^/\t/'"
alias gs="git status | sed 's/^/\t/'"

touch a.txt                   ; echo 'touch'  ; gsp
git add a.txt                 ; echo 'git add'  ; gsp
git rm --cached a.txt > /dev/null        ; echo 'git rm --cached' ; gsp 
git rm -f a.txt > /dev/null        ; echo 'git rm -f' ; gsp