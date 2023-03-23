#!/usr/bin/env bash

backup(){
  files=$@
  for file in $files
  do
    echo "$file" "$file.bak"
    #cp "$file" "$file.bak"
  done
}

backup $@
