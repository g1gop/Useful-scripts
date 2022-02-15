#!/bin/bash

##########
#
# Project     :vdi2img
# Started     :
# Author      :A. Abbott
# Module      :
# Description :convert vdi files to img files
#
##########

# start of code here
read -p "Enter Filename:" filename
qemu-img convert -f vdi -O qcow2 $filename.vdi $filename.img 
# EOF
