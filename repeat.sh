#!/usr/local/bin/bash

. ./utils.sh

while :; do
  "$@" && break
  echo -en "${red}command:$@ fail, will try it again in seconds:${none}"
  print_count_down 15
  echo
done
