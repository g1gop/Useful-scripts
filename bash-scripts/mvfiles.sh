#!/bin/bash
for file in *.zip; do
    mkdir -p "${file%.zip}"
    mv "$file" "${file%.zip}"
done


