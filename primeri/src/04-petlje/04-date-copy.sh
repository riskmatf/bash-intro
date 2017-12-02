#!/bin/bash

fajls=$(ls -1 "$1")
dest="$2"
today=$(date +"%d-%m-%y-")

for i in $fajls;
do
	cp "$1/$i" "$dest/$today$i"
done


