#!/bin/bash

##########
#
# Project     :qemu image create
# Started     :
# Author      :A. Abbott
# Module      :
# Description :create hd images for qemu
#
##########

# start of code here
read -p "image name:" filename
read -p "Size?" size
qemu-img create -f qcow2 -o size=$size $filename.img
# EOF
