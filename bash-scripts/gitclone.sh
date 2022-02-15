#!/bin/bash

##########
#
# Project     :auto git Clone
# Started     :
# Author      :A. Abbott
# Module      :
# Description :git clone a list of codes
#
##########

# start of code here
read -p "Enter Filename:" filename
while read line
do
git clone $line
done < $filename
# EOF
