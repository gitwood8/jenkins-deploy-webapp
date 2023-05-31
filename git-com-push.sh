#!/usr/bin/env bash
read -p "Enter a comment for commit: " COM
read -p "Ready to Commit and Push with comment: '$COM'? y/n: " ANS
if [ $ANS == "y" ] 
then
    git add .
    git commit -m "$COM"
    git push
#    echo "Nice"
    exit 0
else
    echo "Aborted"
    exit 1
fi