#!/bin/bash

. ./utils.sh

if [[ $# -ne 0 ]]; then
    echo Usage is $0 basepath
    exit
fi

path=$1

declare -A statarray

while read line; do
    ftype=`file -b ${line} | cut -d ',' -f 1`
    let statarray[${ftype}]++
done < `find ${path} -type f -print`

_cyan ============ File types and counts =============