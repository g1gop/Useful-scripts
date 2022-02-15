#!/bin/bash
for file in *.zip
do
   mkdir "${file%.zip}"
done

