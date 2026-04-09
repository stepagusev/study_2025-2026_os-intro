#!/bin/bash
cd $1 2>/dev/null
for X in *
do
    if test -d "$X"
    then
        echo "$X is a directory"
    else
        echo -n "$X is a file and "
        if test -w $X
        then
            echo "writable "
            if test -r $X
            then
                echo "readable"
        else
            echo "neither writable or readable"
            fi
        fi
    fi
done
