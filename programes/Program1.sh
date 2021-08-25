# !/bin/sh addition
echo "Enter value of a and b"
read a b
if [ $a -gt $b ] 
then
	ans=`expr $a - $b`
	echo "a is greater than b: " $ans
elif [ $a -eq $b ]
then
	echo "a is equal to b: " $a
else
	ans=`expr $a + $b`
	echo "a is less than b: " $ans
fi 
