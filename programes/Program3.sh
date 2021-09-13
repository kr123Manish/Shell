# !/bin/sh

create(){
	touch addressbook.txt
}

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
  echo -e $name '\t' $address '\t' $emailid '\t' $number >>addressbook.txt
  echo "Data inserted successfuly"
}

view()
{
 echo "address database"
 echo -e Name '\t'  Address '\t'  Email_id '\t'  Phone no.
 cat addressbook.txt
}

modify()
{
 echo "enter the name you want to modify"
 read name
 grep -v "$name" addressbook.txt >> addressbook1.txt
 cp addressbook1.txt addressbook.txt
 rm addressbook1.txt
  echo "enter the name of person"
  read name
  echo "permanent address"
  read address
  echo "email id"
  read emailid
  echo "phone no."
  read number
  echo -e $name '\t' $address '\t' $emailid '\t' $number >>addressbook.txt
  echo "Data modified successfuly"
}


delete()
{
  echo "enter the name which u want to delete"
 read name
 grep -v "$name" addressbook.txt >> addressbook1.txt
 cp addressbook1.txt addressbook.txt
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