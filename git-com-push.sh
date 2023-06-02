#!/usr/bin/env bash
echo -e "\n Previous commit comment: $(git log -1 --pretty=%B)\n"
read -p "Enter a comment for commit: " COM && echo ""
read -p "Ready to Commit and Push with comment: '$COM'? y/n: " ANS && echo ""
if [ $ANS == "y" ] 
then
    git add /home/wood/jenkins/jenkins-deploy-app
    git commit -m "$COM"
    git push
else
    echo "Aborted" && echo ""
fi