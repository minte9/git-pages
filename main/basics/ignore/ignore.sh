#!/bin/sh

: "Create a file .gitignore 
The file contains a list of patterns to match
"

alias gs="git status | sed 's/^/\t/' ; echo"
alias gsp="git status --porcelain | sed 's/^/\t/' ; echo"

touch a.txt b.tmp
    echo "touch a b"
    echo "Working:"; gsp

echo "*.tmp" > .gitignore
    echo "touch .gitignore"
    echo "Working:"; gsp

git add .
    echo "git add .";
    echo "Staging: "; gsp

git commit -qm 'm'
    echo "git commit"
    echo "Repository:"; gs

git rm -q .gitignore
git rm -q a.txt
rm b.tmp 
    echo "git rm a .gitignore / rm b"
    echo "Repository:"; gsp

git commit -aqm 'm'
    echo "git commit -a"
    echo "Repository:"; gs