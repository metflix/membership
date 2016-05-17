#!/bin/bash

git config --global user.email "makingx@gmail.com"
git config --global user.name "Toshiaki Maki"
cd out
shopt -s dotglob
mv -f ../repo-master/* ./
git status
git branch -a
git log master | head -n 20 | cat
git log develop/develop | head -n 20 | cat
git remote add -f develop ../repo
git merge --no-edit develop/develop
git status