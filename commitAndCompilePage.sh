#!/bin/bash

read -r -p 'Commit message: ' desc  # prompt user for commit message
git add .                           # track all files
git commit -m "$desc"               # commit with message
git push origin master              # push to origin

rm -r ../workshopdecriacaodesite.github.io/[^.]*
hugo -d ../workshopdecriacaodesite.github.io/

cd ../workshopdecriacaodesite.github.io/

git add .                           # track all files
git commit -m "$desc"               # commit with message
git push origin master              # push to origin
