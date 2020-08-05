#!/bin/bash -x

echo "This Problem displays the winner heads or tails"
headcount=0
tailcount=0

function flipCoin() {
toss=$((RANDOM%2))
if ((toss==1))
then
	((headcount++))
else
	((tailcount++))
fi
}

while (( ((headcount<21)) || ((tailcount<21)) ))
do
	flipCoin $headcount $tailcount
done

if ((headcount==tailcount))
then
	while (( (( $(($headcount-$tailcount))<2 )) || (( $(($tailcount-$headcount))<2 )) ))
	do
		flipCoin $headcount $tailcount
	done
fi

if ((headcount>tailcount))
then
	echo "HEAD won by $(($headcount-$tailcount))"
else
	echo "TAIL won by $(($tailcount-$headcount))"
fi
