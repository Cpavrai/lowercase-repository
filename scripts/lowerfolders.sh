#!/bin/sh
# convert all folders names in the current directory to lower case

find . -type d | while read x; do
    lc=`echo "$x" | tr '[A-Z]' '[a-z]'`
    if [ "$lc" != "$x" ]; then
        mv -v "$x" "$lc"
    fi
done
