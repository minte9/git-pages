#!/bin/sh

: "Create a file .gitignore 
The file contains a list of patterns to match
"

alias gs="git status | sed 's/^/\t/' ; echo"
alias gsp="git status --porcelain | sed 's/^/\t/' ; echo"

touch a.txt b.tmp
    echo "touch a b"
    gsp

echo "*.tmp" > .gitignore
    echo "*.tmp > .gitignore"
    gsp

git add .
    echo "git add ."
    gsp

git commit -qm 'm'
    echo "git commit"
    gs

git rm -q .gitignore
git rm -q a.txt
rm b.tmp 
    echo "git rm a .gitignore / rm b"
    gsp

git commit -aqm 'm'
    echo "git commit -a"
    gs