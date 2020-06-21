#!/bin/bash

cd /var/log

for file in `find . -type d` ; do
    echo `find ${file} -type f | wc -l` files in ${file}
done

