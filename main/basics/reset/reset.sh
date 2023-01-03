#!/bin/sh

: "Commit reset
Reset soft  / modifications remain in staging
Reset       / modifications are removed from staging
Reset hard  / modifications are removed, but stored in gargage
You can get the commit back as long as it was within a few days
"

alias gs="git status | sed 's/^/\t/'"
alias gsp="git status --porcelain | sed 's/^/\t/'"
alias tab2lines="sed 's/^/\t/'"

touch a.txt
    echo "touch"
    gsp

git add .
    echo "git add"
    gsp

git commit -aqm 'File a.txt added' | tab2lines
    echo "git commit" 
    gs

    echo "git last log"
git log -n 1 --oneline | tab2lines 

git reset --soft HEAD~1
    echo "Reset soft ~1"
    gsp

git commit -aqm 'm'
    echo "git commit"
    gs

git reset HEAD~1 | tab2lines 
    echo "Reset ~1"
    gsp

git add .
git commit -aqm 'm'
    echo "git commit"
    gs

git rm -f a.txt > /dev/null