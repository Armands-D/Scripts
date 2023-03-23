#!/usr/bin/env bash

usage(){
  echo "Usage: [OPTIONS] FILES"
}

backup(){
  files=$@
  for file in $files
  do
    echo "$file" "$file.bak"
    #cp "$file" "$file.bak"
  done
}

backup $@
