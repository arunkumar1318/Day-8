declare -A Dice_roll

Dice_roll[1]=$(((RANDOM%6)+1))
echo "First time dice roll ${Dice_roll[1]}"

for (( i=0; i<20; i++))
do
	Dice_roll[$i]=$(((RANDOM%6)+1))



	if [ ${Dice_roll[1]} -eq 10 ]
	then 
		echo "It has Reach 10 times "
		exit 0
	else
	echo "Next Dice roll value ${Dice_roll[$i]}"
	fi

done

echo ${Dice_roll[@]}
