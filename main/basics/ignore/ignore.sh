#!/bin/sh

: "Create a file .gitignore containing a list of patterns to match
Use . (source command) to exectute aliases.sh in the current shell
"

alias gs="git status | sed 's/^/\t/' ; echo"
alias gsp="git status --porcelain | sed 's/^/\t/' ; echo"

touch a.txt b.tmp
    echo "touch a b"
    echo "Working tree:"; gsp

echo "*.tmp" > .gitignore
    echo "touch .gitignore"
    echo "Working tree:"; gsp

git add .
    echo "git add ."; gsp

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