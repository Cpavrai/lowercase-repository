#!/bin/sh
# convert all folders names in the current directory to lower case

find . -type d -depth | while read x; do
    if [ "$x" = "." ]; then
        continue
    fi
    lc_dirname=`echo "${x##*/}" | tr '[A-Z]' '[a-z]'`
    lc=`echo "${x%/*}/${lc_dirname}"`
    if [ "$lc" != "$x" ]; then
        mv -v "$x" "$lc"
    fi
done
