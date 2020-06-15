#!/usr/local/bin/bash

function print_count_down() {
  tput sc
  for count in `seq $1 -1 1` ; do
      tput rc
      tput el
      echo -n ${count}
      sleep 1
  done
}
