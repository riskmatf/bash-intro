#!/bin/bash

if [ "$#" -ne 3 ];
then
	echo "wrtond"
	exit 1
fi

grep -P '^[+-]?[0-9]+$' <<< "$1" > /dev/null

if [ "$?" -ne 0 ];
then
	echo "arg must be number"
	exit 1
fi

grep -P '^[+-]?[0-9]+$' <<< "$3" > /dev/null

if [ "$?" -ne 0 ];
then
	echo "arg must be number"
	exit 1
fi

case "$2" in
	-add)
		op="+"
		;;
	-sub)
		op="-"
		;;
	-mul)
		op="*"
		;;
	-div)
		op="/"
		;;
	-mod)
		op="%"
		;;
	*)
		echo "wronga arg"
		exit 1
		;;
esac

echo $(( $1 $op $3 ))
