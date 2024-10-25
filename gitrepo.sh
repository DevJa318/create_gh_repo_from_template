#!/bin/bash

for i in $@ 
do
gh repo create $i --private
done

