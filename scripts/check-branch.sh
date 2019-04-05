#!/bin/bash

branch=$(git symbolic-ref --short HEAD 2> /dev/null)

if [ $? != 0 ]; then
  echo "You must be on a branch in order to commit."
  exit 1
elif [ "$branch" == "master" ]; then
  echo "Committing on the master branch is not allowed."
  exit 1
fi
