#!/bin/bash

branch=$(git symbolic-ref --short HEAD)

if [ $? != 0 ]
  echo "You must be on a branch in order to commit."
  exit 1
elif [ "$branch" == "master" ]
  echo "Committing on the master branch is not allowed."
  exit 1
fi
