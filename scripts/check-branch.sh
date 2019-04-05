#!/bin/bash

branch=$(git symbolic-ref --short HEAD)

if [ "$branch" == "master" ]
then
  echo "Committing on the master branch is not allowed."
  exit 1
fi
