#!/bin/bash
while IFS= read -r line; 
do 
	echo ${line}; 
	printf '\n'
done < $1
