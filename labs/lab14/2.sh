#!/bin/bash

a=$1

if test -f "/usr/share/man/man1/$a.1.gz"
then
    less /usr/share/man/man1/$a.1.gz
else
    echo "No such command"
fi
