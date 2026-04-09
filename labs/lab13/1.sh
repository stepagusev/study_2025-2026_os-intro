#!/bin/bash
while getopts i:o:p:C:n params
do
case $params in
    i) iflag=1; ival=$OPTARG;;
    o) oflag=1; oval=$OPTARG;;
    p) pflag=1; pval=$OPTARG;;
    C) cflag=1;;
    n) nflag=1;;
    *) echo Incorrect input $params;;
    esac
done
if ! test $cflag
    then
        cf=-i
fi
if test $nflag
    then
        nf=-n
fi

grep $cf $nf $pval $ival >> $oval
