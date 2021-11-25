#!/bin/bash

echo "Enter number"
read n
s=0
rev=0
temp=$n

while [ $n -gt 0 ]
do
    s=$(( $n % 10 ))
    rev=$(( $rev * 10 + $s ))
    n=$(( $n / 10 ))
done
if [ $temp -eq $rev ]
then
	echo "number is plindrome"
else
	echo "number is not palindrome"
fi
