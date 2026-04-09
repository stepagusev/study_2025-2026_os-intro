#!/bin/bash
find $* -mtime 7 -mtime +0 -type f > files.txt
tar -cf files.tar -T files.txt
