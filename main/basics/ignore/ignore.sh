#!/bin/sh

: "Create a file .gitignore containing a list of patterns to match
Use . (source command) to exectute aliases.sh in the current shell
"

alias gs="git status | sed 's/^/\t/' ; echo"
alias gsp="git status --porcelain | sed 's/^/\t/' ; echo"

touch a.txt b.tmp
    echo "touch"
    echo "Working tree:"; gsp

touch .gitignore
echo "*.tmp" > .gitignore
    echo ".gitignore"
    echo "Working tree:"; gsp

git add .
git commit -qm 'm'
    echo "git commit"
    echo "Repository:"; gs

rm b.tmp 
git rm -q .gitignore a.txt
    echo "git rm"
    echo "Repository:"; gsp

git add .
git commit -qm 'm'
    echo "git commit"
    echo "Repository:"; gs