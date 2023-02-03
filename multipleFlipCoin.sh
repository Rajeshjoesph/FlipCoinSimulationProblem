printf "\n"
echo "Welcome Flip Coin Simulation Problem"
printf "\n"
read -p "Enter No.of.Toss in Coin: " n

echo "-----------------------------------------------"
head=0
tail=0
for(( i=1;i<=$n;i++ ))
do
	toss=$((RANDOM%2));
	if [ $toss -eq 0  ]
	then
		echo "Flip $i is Heads"
		((head++))
	else
		echo "Flip $i is Tails"
		((tail++))
	fi
done
echo "-----------------------------------------------"

echo "Head count is $head And Tail Count is $tail"

echo "-----------------------------------------------"

if(( head > tail ))
then
	echo "Head is Winner"
else
	(( tail > head ))
	echo "Tail is Winner"
fi


