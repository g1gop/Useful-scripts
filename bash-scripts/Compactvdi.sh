#!/bin/sh

##########
#
# Project     :Compact VirtualBox disk files
# Started     :03072020
# Author      :A. Abbott
# Module      :
# Description :
#
##########

# start of code here
read -p "Enter full file name:" name
sudo VBoxManage modifymedium disk "$name" --compact
# EOF

