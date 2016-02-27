#!/bin/bash

DIRECTORY=public

if [ -d "$DIRECTORY" ];
then

  # go to the out directory and create a *new* Git repo
  cd public

  # Remove possible existing git repo. We'll replace entire wiki
  rm -rf .git

  # Init new repo
  git init

  # The first and only commit to this new Git repo contains all the
  # files present with the commit message "Deploy to Wiki".
  git add .
  git commit -m "deploy: gh pages"

  # Add originq
  git remote add docs git@github.com:pyramidium/generator-bannertime.git

  # Force push from the current repo's master branch to the remote
  # (All previous history on the master branch will be lost, since we are overwriting it.)
  git push --force docs master:gh-pages

else
  echo "Public directory does not exist!"
fi
