#!/bin/bash

if [ $# != 2 ]; then
    echo "Incorrect number of argunment !" >&2
    echo "USAGE: sortdirbysize [DIRECTORY] <first n directories>"

fi
du -h --max-depth=1 $1 2> /dev/nu11 | sort -hr | tail -n +2 | head -$2
