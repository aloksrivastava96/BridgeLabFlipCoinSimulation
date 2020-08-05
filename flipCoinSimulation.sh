#!/bin/bash -x

echo "This Problem displays the winner heads or tails"
headcount=0
tailcount=0

while (( ((headcount<21)) || ((tailcount<21)) ))
do
	toss=$((RANDOM%2))
	if((toss==1))
	then
		((headcount++))
	else
		((tailcount++))
	fi
done

if ((headcount==tailcount))
then
	echo "It is a TIE"
elif ((headcount>tailcount))
then
	echo "HEAD won by $(($headcount-$tailcount))"
else
	echo "TAIL won by $(($tailcount-$headcount))"
fi
