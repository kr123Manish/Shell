## Linux environment should be required
## Topics :<a href="https://www.tutorialspoint.com/unix/unix-basic-operators.htm" >Arithmetic Operators , Relational Operators </a>

### Programe1
- Get input of two numbers a and b
- if a is greater than b then o/p will be a-b
- if a is less than b then o/p will be a+b
- if a is equal to b then o/p will be a
- save below programe in ```filename.sh``` format
- to execute use command ```sh filename.sh```
```shell
# !/bin/sh addition   # Hash use for command.
echo "Enter value of a and b"     # echo for output.
read a b                          # get input
if [ $a -gt $b ]                  # comparision
then  
	ans=`expr $a - $b`              # operation  
	echo "a is greater than b: " $ans
elif [ $a -eq $b ]
then
	echo "a is equal to b: " $a
else
	ans=`expr $a + $b`
	echo "a is less than b: " $ans
fi                                 # conditional statement closed
```
## Topics: Array and Loops
### Programe2
- Iterate array name NUMS and check it's even or odd.
``` shell 
NUMS="1 3 3 4 5"    # Define array NUMS 
for NUM in $NUMS
do
	Q=`expr $NUM % 2`
	if [ $Q -eq 0 ]
	then
		echo $NUM " is even"
	else
		echo $NUM " is odd"
	fi	
done
```
## OR
``` shell
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
```

