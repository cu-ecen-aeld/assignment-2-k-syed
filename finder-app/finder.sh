#!/bin/sh

if [ $# -ne 2 ]; then
	echo "usage: finder <files dir>, <search string>"
	exit 1
fi
path=$1
if [ ! -d $path ]; then
	echo "the directory does not exist"
	exit 1
fi

total_files=$(find $path -type f | wc -l)
match_lines=$(grep -shor $2 $path | wc -l) 
echo "The number of files are $total_files and the number of matching lines are $match_lines"


