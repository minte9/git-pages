#!/bin/sh

: "Create a file .gitignore containing a list of patterns to match
"

alias gsp="git status --porcelain | sed 's/^/\t/'; echo"
alias gs="git status | sed 's/^/\t/'; echo"

touch a.txt b.tmp                   ; echo "touch / Working tree:"      ; gsp
touch .gitignore
echo "*.tmp" > .gitignore           ; echo ".gitignore / Working tree:" ; gsp
git add .
git commit -m 'm' > /dev/null       ; echo "git commit / Repository:"   ; gs
rm b.tmp 
git rm .gitignore a.txt > /dev/null ; echo "git rm / Repository:"       ; gsp
git add .
git commit -m 'm' > /dev/null       ; echo "git commit / Repository:"   ; gs