#!/bin/bash

broj="$RANDOM"

broj=$(( "$broj" % "$2" + "$1" ))

echo $broj
