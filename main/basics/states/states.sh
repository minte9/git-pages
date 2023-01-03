#!/bin/sh

: "Git has three main states that your files can reside in:

Working tree    | File changed but not committed it to database yet
Staging area    | File marked as modified to go into your next commit
Repository      | Committed file is stored in your DB

The history of the project is on the local disk
GIT stores everything in his database using hashes
"

alias gs="git status | sed 's/^/\t/' ; echo"
alias gsp="git status --porcelain | sed 's/^/\t/' ; echo"

touch myfile.tmp
    echo "touch"
    echo "\t Working Tree:"; gsp  

git add .                       
    echo "git add"
    echo "\t Staging Area:"; gsp

git commit -qm "m"
    echo "git commit"
    echo "\t Repository:"; gs

git rm -q myfile.tmp 
    echo "git rm"
    echo "\t Staging Area:"; gsp

git commit -qm "m" 
    echo "git commit"
    echo "\t Repository:"; gs