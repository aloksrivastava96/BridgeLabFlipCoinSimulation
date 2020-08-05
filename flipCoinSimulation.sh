#!/bin/bash -x

echo "This Problem displays the winner heads or tails"
toss=$((RANDOM%2))
if((toss==1))
then
	echo "HEAD"
else
	echo "TAIL"
fi
