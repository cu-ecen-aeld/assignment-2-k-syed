#!/bin/sh

if [ $# -ne 2 ]; then
	echo "usage: writer <files dir with file name>, <write string>"
	exit 1
fi
fullpath=$1 
path=$(dirname $fullpath); filename=$(basename $fullpath)

if [ ! -d $path ]; then
	mkdir -p $path
fi	
echo $2 > $fullpath
if [ -w $fullpath ]
then
	exit 0	
else
	echo "Failed to create the file"
	exit 1
fi
