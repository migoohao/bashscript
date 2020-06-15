#!/usr/local/bin/bash

set -o nounset

. ./utils.sh

while :; do
  "$@" && break
  echo -n "command:$@ fail, will try it again in seconds:"
  print_count_down 15
  echo
done
