#!/bin/bash

red='\e[91m'
green='\e[92m'
yellow='\e[93m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'

function _red() {
  echo -e ${red}$*${none}
}

function _green() {
  echo -e ${green}$*${none}
}

function _yellow() {
  echo -e ${yellow}$*${none}
}

function _magenta() {
  echo -e ${magenta}$*${none}
}

function _cyan() {
  echo -e ${cyan}$*${none}
}

function print_count_down() {
  tput sc
  for count in `seq $1 -1 1` ; do
      tput rc
      tput el
      echo -en "${green}${count}${none}"
      sleep 1
  done
  tput el1
}
