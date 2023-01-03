#!/bin/sh

: "Commit reset
Reset soft  / modifications remain in staging
Reset       / modifications are removed from staging
Reset hard  / modifications are removed, but stored in gargage
You can get the commit back as long as it was within a few days
"

alias gs="git status | sed 's/^/\t/'; echo"
alias gsp="git status --porcelain | sed 's/^/\t/'; echo"
alias tab2lines="sed 's/^/\t/' ; echo"
alias gc="git add -u . ; git commit -am 'm' --quiet"

touch a.txt
    echo "touch"
    gsp

git add .
    echo "git add"
    gsp

git commit -m 'My commit' | tab2lines
    echo "git commit" 
    gs

git log -n 1 --oneline | tab2lines 
    echo "git last log"
    gs

git reset --soft HEAD~1
    echo "Reset soft ~1"
    gsp
    gc

git reset HEAD~1
    echo "Reset ~1"
    gsp
    gc
                  
git rm -fq a.txt