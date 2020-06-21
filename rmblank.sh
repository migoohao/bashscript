#!/bin/bash

. ./utils.sh

if [[ $# -eq 0 ]]; then
    _red "Usage is $0 [filepath]+"
    exit 1
fi

for file in $@ ; do
    if [[ ! -f ${file} ]]; then
        _red "${file} is not a file"
        exit 2
    fi
done

sed -i.bak '/^$/d' $@
rm *.bak
