#!/bin/sh

: "Removing files from repository

If a file is not tracked rm file will generate error
To remove a file from working directory, when used with -f
To keep the file on the working directory, use --cached
Reset unstages a staged file
"

alias gsp="git status --porcelain | sed 's/^/\t/'; echo"
alias gs="git status | sed 's/^/\t/'; echo"

touch a.txt ; gsp
git add a.txt ; gsp
git rm -f a.txt > /dev/null ; gs