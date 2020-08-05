#!/bin/bash -x

echo "This Problem displays the winner heads or tails"
counter=10
headcount=0
tailcount=0
while ((counter>0))
do
	toss=$((RANDOM%2))
	if((toss==1))
	then
		echo "HEAD"
		((headcount++))
	else
		echo "TAIL"
		((tailcount++))
	fi
	((counter--))
done
echo "Number of times head won:"$headcount
echo "Number of times tail won:"$tailcount
