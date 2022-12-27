: """
Save output of a shell script to result.txt file
into current directory

Example:
cd git-pages/main/basics/states
../../output.sh states.sh 

$1 - first command argument
"$output" - command substitution
tee - outputs & save
"""

filename=$(basename "$1")
echo "$filename"

output=`./$1`
echo "$output" | tee output.log 

git add output.log
git add ../../
git commit -am 'output.sh - update repo' > /dev/null