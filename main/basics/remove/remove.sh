#!/bin/sh

: "Removing files from repository
If a file is not tracked rm file will generate error
To remove a file and keep it in working directory, use --cached
To remove a file from working directory, when used with -f
"

alias gs="git status | sed 's/^/\t/' ; echo"
alias gsp="git status --porcelain | sed 's/^/\t/' ; echo"

touch a.tmp                         
    echo 'touch'
    gsp

git add a.tmp
    echo 'git add'
    gsp

git rm -q --cached a.tmp
    echo 'git rm --cached'
    gsp

git add a.tmp
    echo 'git add'
    gsp

git rm -fq a.tmp
    echo 'git rm -f'
    gs