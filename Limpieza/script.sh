#!/bin/bash

CONT=0;

for F in $(find ./); do
	lineas=$(wc -l $F);
	vec=$(echo $lineas | tr " " "\n")
	#echo "$F"
	let CONT=$CONT+${vec[0]};
done

echo "$CONT"