#!/bin/bash

if [ "$#" -lt 2 ];
then
	echo "wrong"
	exit 1
fi


option="$1"
shift
var=$1
shift

while [ "$#" -gt 0 ];
do
	if [ "$option" == "-min" ];
	then
		if [ "$var" -gt "$1" ];
		then
			var="$1"
		fi
	elif [ "$option" == "-max" ];
	then
		if [ "$var" -lt "$1" ];
		then
			var="$1"
		fi
	else
		echo "wrong argument"
		exit 1
	fi
	shift
done

echo "$var"
