#!/bin/bash

array=(10 15 17 23 78)

flag=0

for(( counter=0; counter<5; counter++ ))
do
	for(( i=2; i<=$(( ${array[$counter]} / 2 )); i++ ))
	do
		if [ $(( ${array[$counter]} % i )) -eq 0 ]
		then
			flag=1
		else
			flag=0
		fi
	done

	if [ $flag -eq 1 ]
	then
		echo "${array[$counter]} is not a prime number"
	else
		echo "${array[$counter]} is a prime number"
	fi
done

