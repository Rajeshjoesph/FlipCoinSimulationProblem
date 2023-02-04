printf "\n"
echo "Welcome Flip Coin Simulation Problem"
printf "\n"

echo "-----------------------------------------------"
head=0
tail=0
target=21
flip=0

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

        if (( head == target || tail == target))
        then
                break
        fi
done

echo "-----------------------------------------------"

echo "Head count is $head And Tail Count is $tail"

echo "-----------------------------------------------"

if(( head > tail ))
then
        echo "Head is Winner by $(( head - tail ))"
elif(( tail > head ))
then
        echo "Tail is Winner by $(( tail -head ))"
else
	echo "its Tie"
fi
