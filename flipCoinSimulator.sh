#!/bin/bash

echo "********Flip Coin Simulator********"

#use case 1 ::  read no. coins and no. of times to flip coin and display heads  tails 

read -p "How Many Coin You Want To Flip..?? " coin
echo  "How Many Time You Want To Flip..?? " 
read num

function flipCoin()
{
local coinValue=""

	for (( i=0; i<$coin; i++ ))
	do

		flipResult=$((RANDOM%2))
		if [ $flipResult -eq 1 ]
		then
			coinValue=$coinValue"H"
		else
			coinValue=$coinValue"T"
		fi
	done

		echo $coinValue
}

for (( j=0; j<$num; j++ ))
	do
	result=$(flipCoin)
	echo $result
done
