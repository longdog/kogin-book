#!/bin/bash

find ./src/patterns/ -type f -print0 | while IFS= read -r -d $'\0' file; 
  do 
  name=${file##*/}
  base=${name%.txt}
  node ../koginlib/cli/index.js --pattern="${file}" --output="./src/img/${base}.png"
done