#!/bin/bash

##########
#
# Project     :auto wget
# Started     :
# Author      :A. Abbott
# Module      :
# Description :Wget a list of codes
#
##########

# start of code here
read -p "Enter Filename:" filename
while read line
do
wget $line
done < $filename
# EOF

