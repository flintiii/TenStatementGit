#!/usr/bin/env bash 
# Tue 14 Feb 2023 01:56:12 PM EST 
version="0.01"
#
# echo "# TenStatementGit fifth commit" >> README.md#
cd /home/flint/TenStatementGit; pwd 
# git init
# git add README.md
git commit -m "fifth commit"
git branch -M main
git remote add origin git@github.com:flintiii/TenStatementGit.git
git push -u origin main
