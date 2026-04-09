#!/bin/bash
lockfile="./lock.file"
exec {fn}>$lockfile
timesleep=3

while test -f "$lockfile"
do
if flock -n ${fn}
then
    echo "File is blocked"
    sleep $timesleep
    echo "File is unblocked"
    flock -u ${fn}
else
    echo "File is unlocked"
    sleep $timesleep
fi
done
