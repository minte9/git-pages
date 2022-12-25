#!/bin/sh

: """
The history of the project is on the local disk
GIT stores everything in his database using hashes

Working tree / Staging area / Repository

File changed but not committed it to database yet
File marked as modified to go into your next commit
Committed file is stored in your DB
"""

alias gsp="git status --porcelain | sed 's/^/\t/'; echo"
alias gs="git status | sed 's/^/\t/'; echo"

touch myfile.tmp ;              echo "touch / Working tree:"        ; gsp

git add . ;                     echo "git add . / Staging area:"    ; gsp
git commit -m "m" > /dev/null ; echo "git commit / Repository:"     ; gs

git rm myfile.tmp > /dev/null ; echo "git rm / Staging area:"       ; gsp
git commit -m "m" > /dev/null ; echo "git commit / Repository:"     ; gs