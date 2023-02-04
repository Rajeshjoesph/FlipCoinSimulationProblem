printf "\n"
echo "Welcome Flip Coin Simulation Problem"
printf "\n"

echo "-----------------------------------------------"
head=0
tail=0
target=21
flip=0
minimum=2

while (( 1 ))
do
        (( flip_count++))
        echo -n "Flip-$flip : "
        toss=$((RANDOM%2));
        if [ $toss -eq 0  ]
        then
                echo "Heads"
                ((head++))
        else
                echo "Tails"
                ((tail++))
        fi
difference=$(( head - tail ))
if(( head == target && difference >= minimum ))
then
	echo "Head was win by $difference points"
	break
elif(( tail == target && ${difference#-} >= minimum ))
then
	echo "Tail was win by ${difference#-} Pints"
	break
fi
done
echo "-----------------------------------------------"
echo "Head count is $head And Tail Count is $tail"
