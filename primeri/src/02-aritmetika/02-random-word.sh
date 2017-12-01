#!/bin/bash

fajl_reci="../../data/02-aritmetika/words"
reci=$(<"$fajl_reci")
#reci=$(cat "$fajl_reci")
broj_reci=$(wc -l <<< "$reci")
#broj_reci=$(echo "$reci" | wc -l)
#echo $broj_reci

rec_id=$(( "$RANDOM" % "$broj_reci" + 1 ))

echo "$(head -n "$rec_id" <<< "$reci" | tail -n 1)"
