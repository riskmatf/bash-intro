#!/bin/bash

if [  "$#" -ne "3" ];
then
	echo "usage ./01-basic.sh min max"
	exit 1
fi

grep -P '^[0-9]+$' <<< "$1" > /dev/null

if [ "$?" -ne "0" ];
then
	echo "argument must be a number"
	exit 1
fi

grep -P '^[0-9]+$' <<< "$2"  > /dev/null

if [ "$?" -ne "0" ];
then
	echo "argument must be a number"
	exit 1
fi

grep -P '^[0-9]+$' <<< "$3"  > /dev/null

if [ "$?" -ne "0" ];
then
	echo "argument must be a number"
	exit 1
fi

if [ ! "$1" -lt "$2" ];
then
	echo "prvi argument mora biti manji od drugog"
	exit 1
fi


for i in $(seq 1 $3):
do
	broj=$(( "$RANDOM" % "$2" + "$1" ))
	echo "Vas broj je $broj"
done
