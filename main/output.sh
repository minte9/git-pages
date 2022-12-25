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

output=`./$1`
echo "$output" | tee output.log 

git add output.log
git add ../../output.sh
git commit -am 'Update repo' > /dev/null