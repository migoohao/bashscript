#!/bin/bash

. ./utils.sh

if [[ $# -ne 1 ]]; then
    _red "Usage is $0 file"
    exit 1
fi

egrep -o '\b[[:alpha:]]+\b' $1 | awk '{
    count[$0]++
}
END {
    printf "%-14s%s\n", "word", "count"
    for(word in count) {
        printf "%-14s%d\n", word, count[word]
    }
}'
