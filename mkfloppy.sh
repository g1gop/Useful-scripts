#!/bin/sh

##########
#
# Project     :make floppy image
# Started     :18/08/2020
# Author      :Alan Abbott
# Module      :
# Description :
#
##########

# start of code here
dd bs=512 count=2880 if=/dev/zero of=floppy1.img
mkfs.msdos floppy1.img
# EOF

