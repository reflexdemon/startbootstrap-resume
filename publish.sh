#!/usr/bin/env bash

# Ensure you are in master
git checkout master

# Ensure you are doing a pull
git pull

#Package
gulp

# Delete Local Branch
git branch -D gh-pages

# Delete Remote Branch
git push origin :gh-pages

#Create branch gh-pages
git checkout -b gh-pages

#Publish to remote
git push --set-upstream origin gh-pages


# Back to master
git checkout master
