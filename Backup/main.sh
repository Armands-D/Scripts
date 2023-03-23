#!/usr/bin/env bash

usage(){
  echo "Usage: [OPTIONS] FILES"
}

backup(){
  local d;
  while getopts "d:" option; # TODO: Add error handling
  do
    case "${option}" in
      d)
        echo "option: d"
        ;;
      *)
        echo "option: None"
        ;;
    esac
  done
  shift $((OPTIND-1)) # Shift to position of next arg after options

  files=$*
  for file in $files
  do
    echo "$file" "$file.bak"
    #cp "$file" "$file.bak"
  done
}

backup $@
