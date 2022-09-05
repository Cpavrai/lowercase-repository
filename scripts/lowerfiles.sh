#!/bin/sh
# convert all files names in the current directory to lower case

find . -type f | while read x; do
    lc=`echo "$x" | tr '[A-Z]' '[a-z]'`
    if [ "$lc" != "$x" ]; then
        mv -v "$x" "$lc"
    fi
done
