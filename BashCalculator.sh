#!/bin/bash 

echo "Welcome to my Bash Calculator!"

echo "Enter Two whole numbers and a basic operation and this program will 
compute!"
 
echo "Operations are as follows: Multiplicaton, Division, Subtraction, 
Addition"
 
echo "Enter two whole integers now (positive or negative), in the order of 
the calculation you want first"
read -p '1st whole integer ' var1
read -p '2nd whole integer ' var2

echo $var1
echo $var2 #Testing Input Functionality

echo "Enter an single operation now, type the string instead of a symbol!"
read -p 'Division or Multiplication?  Subtraction or Addition? ' opr

echo $opr #Testing Input Functionality

OPR = $($opr | tr [:lower:])

echo $OPR #Testing Input Functionality
 
if [ $var2 -eq 0 && ${OPR} == division ]
then 
	echo "Cannot Divide by Zero"
exit 0
fi 
case ${OPR} in
	division)
		quo = $( expr $var1 / $var2 )
		echo 'The quotient of $num1 and $num2 is $quo'
	;;
	multiplication)
		prod=$( expr $var1 * $var2 )
		echo 'The product of $num1 and $num2 is $prod'
	;;
	addition)
		sum=$( expr $var1 + $var2 )
		echo 'The product of $num1 and $num2 is $sum'
	;;
	subtraction)
		diff=$( expr $var1 - $var2 )
		echo 'The difference of $num1 and $num2 is $diff'
	;;
esac
echo 'Thanks for Calculating!'
