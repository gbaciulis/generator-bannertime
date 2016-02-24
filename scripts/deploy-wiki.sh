#!/bin/bash

DIRECTORY=wiki

if [ -d "$DIRECTORY" ];
then

  # go to the out directory and create a *new* Git repo
  cd wiki

  # Remove possible existing git repo. We'll replace entire wiki
  rm -rf .git

  # Init new repo
  git init

  # The first and only commit to this new Git repo contains all the
  # files present with the commit message "Deploy to Wiki".
  git add .
  git commit -m "deploy: wiki"

  # Add origin
  git remote add wiki git@bitbucket.org:oliverdigital/dev-wiki.git/wiki

  # Force push from the current repo's master branch to the remote
  # (All previous history on the master branch will be lost, since we are overwriting it.)
  git push --force wiki master:master

else
  echo "Wiki directory does not exist!"
fi
