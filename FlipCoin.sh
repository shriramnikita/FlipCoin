#!/bin/bash -x
echo "Choose (h)eads or (t)ails:" 
read userChoice
if [ $userChoice != h ] && [ $userChoice != t ] 
then
	echo "Invalid choice. Defaulting to (h)eads." 
	userChoice=h 
fi
#Value 1 is head & 2 is tail
computerChoice=$((RANDOM % 2))
if [ $computerChoice -eq 1 ]
then
	echo "Computer Choose head"
else
	echo "Computer choose tail"
fi
for ((i=0; i<11; i++))
do
	if [ $computerChoice -eq 1 ] && [ $userChoice = h ]
	then
		echo "You Win!" 
	elif [ $computerChoice -eq 1 ] && [ $userChoice = t ]
	then 
		echo "You Lose!" 
	elif [ $computerChoice -eq 2 ] && [ $userChoice = t ]
	then
		echo "you Win!" 
	else
	echo "you Lose!"
	fi
done
