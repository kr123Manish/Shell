NUMS=(1 3 3 4 5)
for NUM in "${NUMS[@]}"
do
	Q=`expr $NUM % 2`
	if [ $Q -eq 0 ]
	then
		echo $NUM " is even"
	else
		echo $NUM " is odd"
	fi	
done