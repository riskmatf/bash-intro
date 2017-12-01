#!/bin/bash

if [ "$#" -ne 2 ];
then
	echo "error wrong usage"
	exit 1
fi
fajl="$1"
dir="$2"

if [ ! -f "$fajl" ];
then
	if [ ! -e "$fajl" ];
	then
		echo "$fajl dose not exist"
	else
		echo "$fajl is not regular"
	fi
	exit 1
fi

if [ ! -d "$dir" ];
then
	if [ ! -e "$dir" ];
	then
		echo "$dir dose not exist"
	else
		echo "$dir is not a direcrotry"
	fi
	exit 1
fi

today=$(date +"%d-%m-%y-")
base=$(basename "$fajl")

cp "$fajl" "$dir/$today$base"
