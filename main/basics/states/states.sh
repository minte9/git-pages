#!/bin/sh

: "Git has three main states that your files can reside in:

Working tree    | File changed but not committed it to database yet
Staging area    | File marked as modified to go into your next commit
Repository      | Committed file is stored in your DB

The history of the project is on the local disk
GIT stores everything in his database using hashes
"

alias gsp="git status --porcelain | sed 's/^/\t/'"
alias gs="git status | sed 's/^/\t/'"

touch myfile.tmp                ; echo "Working tree:"        ; gsp
git add .                       ; echo "Staging area:"    ; gsp
git commit -m "m" > /dev/null   ; echo "Repository:"     ; gs
git rm myfile.tmp > /dev/null   ; echo "Staging area:"       ; gsp
git commit -m "m" > /dev/null   ; echo "Repository:"     ; gs