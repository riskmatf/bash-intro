#!/bin/bash

s_in_day=$((24 * 60 * 60))
today=$(date +"%s")
today=$(( "$today" + "$s_in_day" ))

echo "$(date -d @"$today" "+%d.%m.%Y. %A")"
