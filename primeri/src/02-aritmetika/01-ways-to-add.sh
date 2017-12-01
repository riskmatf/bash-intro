#!/bin/bash

read -p ">" x op y

res=$(expr "$x" "$op" "$y")

echo "Vas rezultat je $res [expr]"

let res1="$x $op $y"

echo "Vas rezultat je $res1 [let]"

res2=$(( "$x" "$op" "$y" ))
echo "Vas rezultat je $res2"'[$((..))]'

(( res2-- ))
echo "Vas rezultat je $res2"'[$((..))]'
