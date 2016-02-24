#!/bin/bash

DIRECTORY=wiki

if [ -d "$DIRECTORY" ];
then

  # go to the content directory and create a *new* Git repo
  cd wiki

  # Remove possible existing git repo. We'll replace entire wiki
  rm -rf .git

  # Init new repo
  git init

  # Add origin
  git remote add wiki git@bitbucket.org:oliverdigital/dev-wiki.git/wiki

  # Reset any local changes
  git clean -fd
  git reset --hard HEAD

  # Update from remote wiki
  git pull wiki master:master

  # Finally remove the git repository to keep changes versioned in the parent repo
  rm -rf .git

else
  echo "Wiki directory does not exist!"
fi

