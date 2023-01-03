#!/bin/sh

: "Git has three main states that your files can reside in:

Working tree    | File changed but not committed it to database yet
Staging area    | File marked as modified to go into your next commit
Repository      | Committed file is stored in your DB

The history of the project is on the local disk
GIT stores everything in his database using hashes
"

alias gs="git status | sed 's/^/\t/'"
alias gsp="git status --porcelain | sed 's/^/\t/'"

touch myfile.tmp
    echo "touch"
    echo "Working Tree:"; gsp  

git add .                       
    echo "git add"
    echo "Stagin Area:"; gsp

git commit -m "m" > /dev/null 
    echo "git commit"
    echo "Repository:"; gs

git rm myfile.tmp > /dev/null 
    echo "git rm"
    echo "Staging Area:"; gsp

git commit -m "m" > /dev/null 
    echo "git commit"
    echo "Repository:"; gs