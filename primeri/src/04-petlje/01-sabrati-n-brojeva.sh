#!/bin/bash


if [ "$#" -ne 1 ];
then
	echo "wrong"
	exit 1
fi

i=0
sum=0

while [ "$i" -lt "$1" ];
do
	(( sum += $i ))
	(( i++ ))
done

echo "$sum"

sum=0

for i in $(seq 0 $(( $1 - 1 )));
do
	(( sum += $i ))
done

echo "$sum"

