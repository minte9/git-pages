#!/bin/sh

: "Commit reset
Reset soft  / modifications remain in staging
Reset       / modifications are removed from staging
Reset hard  / modifications are removed, but stored in gargage
You can get the commit back as long as it was within a few days
"

alias gs="git status | sed 's/^/\t/'"
alias gsp="git status --porcelain | sed 's/^/\t/'; echo"
alias tab2lines="sed 's/^/\t/'; echo"

touch a.txt
echo "touch"; gsp

git add .
echo "git add"; gsp
echo "git commit" 
git commit -am 'My commit' | tab2lines
echo "git last log"
git log -n 1 --oneline | tab2lines 

git reset --soft HEAD~1
echo "Reset soft ~1"; gsp
git commit -aqm 'm'
echo "git commit"; gs
git reset HEAD~1 | tab2lines
echo "Reset ~1"; gsp

git add .
git commit -qm 'm'
echo "git commit"; gs

git rm -f a.txt > /dev/null