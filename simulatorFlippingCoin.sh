printf "\n"

echo "Welcome Flip Coin Simulation Problem"
printf "\n"
read -p "Enter the Coin Value like 1 or 0:" flipp


echo $flipp

if [ $flipp == 1 ]
then
	echo "Head is Winner"
else
	echo "Tail is Winner"
fi


