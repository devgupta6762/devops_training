#!/bin/bash
clear
read -p "Enter age one : " n1
read -p "Enter age two : " n2
read -p "Enter age three : " n3
echo "age1 - $n1"
echo "age2 - $n2"
echo "age3 - $n3"
i="y"
while [ $i = "y" ]
do
if [ $n1 >= $n2 ] and [ $n1 >= $n3]
then
   echo "oldest is"
elif [ $n2 >= $n1 ] and [ $n2 >= $n3]
then
   echo "oldest is"
elif [ $n3 >= $n1 ] and [ $n1 >= $n2]: 
then
   echo "oldest is"
else
   echo "all are equal"

fi
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done    
