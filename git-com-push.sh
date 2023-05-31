#!/usr/bin/env bash
echo -e "\n Previous commit comment: $(git log -1 --pretty=%B)\n"
read -p "Enter a comment for commit: " COM && echo ""
read -p "Ready to Commit and Push with comment: '$COM'? y/n: " ANS && echo ""
if [ $ANS == "y" ] 
then
    git add .
    git commit -m "$COM"
    git push
    exit 0
else
    echo "Aborted" && echo ""
    exit 1
fi