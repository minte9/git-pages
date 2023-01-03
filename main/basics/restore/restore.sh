#!/bin/sh

: "Restore to unstage / Reset to undo commits
"

alias gs="git status | sed 's/^/\t/'; echo"
alias gsp="git status --porcelain | sed 's/^/\t/'; echo"

touch X Y
    echo "touch"; gsp

git add .
    echo "git add"; gsp

git restore --staged X 
    echo "git restore --staged X "; gsp

git add .
git commit -qm 'm'
    echo "git commit"; gs

git reset HEAD^ Y 
    echo "git reset HEAD^ Y"; gsp

git add .
git commit -qm 'm'
    echo "git commit"; gs

rm X
rm Y