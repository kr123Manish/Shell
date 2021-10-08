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
````
## Topic: Create .txt file using ```touch``` and perform following operations.
- Create
- Insert
- View
- Modify
- Delete 
### Programe3
``` shell
# !/bin/sh
#create function to creat a .txt file name address.txt
create(){
	touch addressbook.txt
}
<!-- insert function to inset name, address, email id, phone no  -->
insert()
{
  echo "enter the name of person"
  read name 
  echo "permanent address"
  read address
  echo "email id"
  read emailid
  echo "phone no."
  read number
  echo -e $name '\t' $address '\t' $emailid '\t' $number >>addressbook.txt #insert data into addressbook.txt
  echo "Data inserted successfuly"
}
# function for view addressbook.txt file
view()
{
 echo "address database"
 echo -e Name '\t'  Address '\t'  Email_id '\t'  Phone no.
 cat addressbook.txt
}

# modify function to modify old data.
modify()
{
 echo "enter the name you want to modify"
 read name
 
 #search particular  name you want to modify using ```grep``` from addressbook1.txt,
 #```-v```  use for prints out all the lines that do not matches the pattern,
 #here we write all unmatched data into addressbook1.txt.
 
 grep -v "$name" addressbook.txt >> addressbook1.txt 
 #copy addressbook1.txt to addressbook.txt using ```cp```,
 #at this point addressbook.txt have all info except name which we want to modify.
 cp addressbook1.txt addressbook.txt 
 #remove addressbook1.txt
 rm addressbook1.txt
# take new input for that name we want to modify.
  echo "enter the name of person"
  read name
  echo "permanent address"
  read address
  echo "email id"
  read emailid
  echo "phone no."
  read number
# write new data into addressbook.txt
  echo -e $name '\t' $address '\t' $emailid '\t' $number >>addressbook.txt
  echo "Data modified successfuly"
}

# delete function to remove data
delete()
{
  echo "enter the name which u want to delete"
 read name
 # search name using grep except that data and rest of data copy to addresbook1.txt
 grep -v "$name" addressbook.txt >> addressbook1.txt
 # copy addressbook1.txt data to addressbook.txt 
 cp addressbook1.txt addressbook.txt
 # remove addressbook1.txt file
 rm addressbook1.txt
 echo "Data deleted successfuly"
}

n=0
while [ $n -ne 6 ]
do
echo "enter your choice"
echo " 1->create"
echo " 2->insert"
echo " 3->view"
echo " 4->modify"
echo " 5->delete"
echo " 6->exit"
read ch

case $ch in
1)create ;;
2)insert ;;
3)view ;;
4)modify ;;
5)delete ;;
6)exit ;;
esac
done
````
## Topic: Selection sort <a href="https://www.geeksforgeeks.org/selection-sort/">Prerequisite</a>
### Program4
``` shell
echo "Enter size of array";
read  n;   #get the size of arrary
read -a arr; # get the array eg: 4 2 1  9 7 6
echo "Orignal array is: ${arr[*]}";   # output of original array
# selection sort
for (( i = 0; i < $n-1; i++ ))
do
  for ((j = $i+1; j < $n; j++ ))
  do
      if [[ ${arr[$i]} -gt ${arr[$j]} ]]
      then
        temp=${arr[$i]};
        arr[$i]=${arr[$j]};
        arr[$j]=$temp;
      fi
  done
  
done
echo "Sorted array is: ${arr[*]}";  # sorted array output.
```
