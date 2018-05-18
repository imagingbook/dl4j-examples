#!/bin/bash
UPSTRM="https://github.com/deeplearning4j/dl4j-examples"
echo "Syncing fork to $UPSTRM"
#
#echo "Current remotes:"
#git remote -v
#
echo "Adding remote..."
git remote add upstream "$UPSTRM"
#
#echo "Current remotes:"
#git remote -v
#
echo "Fetching upstream..."
git fetch upstream
#
echo "Switching to master branch..."
git checkout master
#
echo "Merging upstream..."
git merge upstream/master -m "merge upstream"
#
echo "Pushing to remote..."
git push
#
echo ""
read -rsp $'Done. Press any key to quit...\n' -n1 key

