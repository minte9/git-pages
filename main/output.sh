: """
Save output of a shell script to result.txt file
into current directory

Example:
cd git-pages/main/basics/states
../../output.sh states.sh 

$1 - first command argument

Use basename to extract name from $1 argument filename
The cut command is used to split the file name on the . character
-f1 option specifies that the first field 
-d. option specifies that the . character should be used as the delimiter

"$output" - command substitution
tee - outputs & save
"""

filename=$(basename "$1" | cut -f1 -d.)

output=`./$1`
echo "$output" | tee "$filename"".log" 

git add -u .
git add ../../
git commit -am 'output.sh - update repo' > /dev/null