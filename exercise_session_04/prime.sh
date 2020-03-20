#!/bin/bash

#test if variable is given, if not, user input
if test -z "$1"; then
	read -p "Type a number and press enter: " n
else
	n="$1"
fi

#test if variable is number
re='^[0-9]+$'
if ! [[ $n =~ $re ]] ; then
	flt='^[0-9]+([.][0-9]+)?$'
	if [[ $n =~ $flt ]] ; then
		echo "error: $n is not an integer" >&2;
	else
   		echo "error: $n is not a number" >&2;
	fi 
	read -p "Type a number and press enter: " n
fi


function isprime () {
if [[  $n -le 3  ]] ; then
	if [[ $n -le 1 ]] ; then
		echo "number has to be bigger than 1"
		return 1
	else
		return 0 
	fi
elif [[ $(( $n % 2 )) == 0 ]] || [[ $(( $n % 3 )) == 0 ]]; then
	return 1 
fi 

i=5
while [[ $(( $i * $i)) -le $n ]]; do
	if [[ $(($n % $i )) == 0 ]] || [[ $(($n % ($i + 2) )) == 0 ]] ; then
		return 1
	fi
	let "i+=6"
done;

return 0
}

if isprime $1 ; then
	echo "$n is prime"
else
	echo "$n is not prime"
fi
