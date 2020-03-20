#!/bin/bash

#IFS: Internal Field Separator
#read: reads a single line from standard input, read considers a newline character as the end of a line
echo "Filename: $1"

if test -z "$1" 
then
      echo "no file given"
fi

if [ ! -f $1 ] ; then
    echo "$1 does not exist"
fi

while IFS= read line
do
if [[ -n $line ]] ; then
	echo ${line}
fi	
done < $1
