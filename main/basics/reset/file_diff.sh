#!/bin/sh

: "git diff
Differences beetwen file modficiations and its commits
HEAD    / refers to current commit
HEAD^   / refers to the commit before the current commit
"

alias gs="git status | sed 's/^/\t/'; echo"
alias gsp="git status --porcelain | sed 's/^/\t/'; echo"
alias tab2lines="sed 's/^/\t/'; echo"

echo "A" > myfile.tmp
    echo "write A"; gsp 

git add .
git commit -qm 'm'
    echo "git commit"; gs

echo "B" > myfile.tmp
    echo "overwrite"; gsp

echo "C" >> myfile.tmp
    echo "write"; gsp

    echo "git diff"
git diff HEAD myfile.tmp  | tab2lines

git add .
git commit -qm 'm'
    echo "git commit"; gs

git rm -f myfile.tmp > /dev/null