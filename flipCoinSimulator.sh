#!/bin/bash

echo "********Flip Coin Simulator********"

#use case 1 ::  read no. coins and no. of times to flip coin and display heads  tails 

read -p "How Many Coin You Want To Flip..?? " coin
echo  "How Many Time You Want To Flip..?? " 
read num

#uc2:declaration of dictionary to store combination
declare -A Dictionary

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

function simulator()
{
for (( j=0; j<$num; j++ ))
	do
	result=$(flipCoin)
	echo $result
	Dictionary[$result]=$(( ${Dictionary[$result]} + 1 ))  	#uc2 store  in dictionary , Uc3 store doublet in dictionary , UC4 store triplet combination
	#echo "Dictionary::"{Dictionary[$result]}	#display dictionary
done

for result in ${!Dictionary[@]}
	do
		echo ${Dictionary[$result]}
		percentage=$(( ${Dictionary[$result]} *100 / $num ))	#singlet percentage, uc3 doublet percent ,uc4 triplet percent
if [ $coin -eq 2 ]
then
		echo "conbination result for doublet:"$result"	"$percentage"%"

elif [ $coin -eq 3 ]
then
		echo "conbination result for triplet:"$result"  "$percentage"%"

else
  echo "conbination result:"$result"  "$percentage"%"

fi

	done
}

simulator
