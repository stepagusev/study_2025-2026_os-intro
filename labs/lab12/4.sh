#!/bin/bash
format=$1
directory=$2
find "${directory}" -name "*.${format}" -type f | wc -l

