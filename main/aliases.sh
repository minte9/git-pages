alias gsp="git status --porcelain | sed 's/^/\t/'; echo"
alias gs="git status | sed 's/^/\t/'; echo"
alias tab2lines="sed 's/^/\t/' ; echo"
alias gc="git add -u . ; git commit -am 'm' --quiet"