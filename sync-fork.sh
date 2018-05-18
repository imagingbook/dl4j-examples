#!/bin/bash
echo "Syncing fork to original ..."

echo "Current remotes:"
git remote -v

echo "Adding original remote:"
git remote add upstream https://github.com/deeplearning4j/dl4j-examples

echo "Current remotes:"
git remote -v

echo "Fetching upstream:"
git fetch upstream

echo "Switching to master branch:"
git checkout master

echo "Merging upstream:"
git merge upstream/master

echo "Pushing to remote:"
git push

echo ""
read -rsp $'Done. Press any key to quit...\n' -n1 key

