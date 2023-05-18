#!/bin/bash

FILES=$1
PLACEHOLDERS=$2

for file in $FILES; do
  echo "Replacing placeholders in $file"
  for placeholder in $PLACEHOLDERS; do
    key=$(echo $placeholder | cut -d'=' -f1)
    value=$(echo $placeholder | cut -d'=' -f2-)
    sed -i "s|$key|$value|g" $file
  done
done
