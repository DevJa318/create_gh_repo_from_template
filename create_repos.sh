#!/bin/bash

for i in $@ 
do
gh repo create $i --public
gh api \
  --method POST \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/OWNER/$i/rulesets \
   --input reporules.json 
done

