#!/bin/bash

echo "Welcome to my Calculator";

echo "Enter Two whole numbers and a basic operation and this program will
compute!"; 

echo "Operations are as follows: Multiplicaton, Division, Subtraction,
Addition (* / - +) ";

echo "Enter two whole integers now (positive or negative) with an operand
inbetween";

read Var1 Opr1 Var2
        
Vari1=$Var1
Opre1=$Opr1
Vari2=$Var2

echo $Vari1 and $Opre1 and $Vari2 are your numbers and operand;

Calculation=$( expr $Vari1 $Opre1 $Vari2 )
if [ $Vari2 -eq 0 ] && [ $Opre1 == / ]
then
        echo "Error, Cannot Divide by Zero";
fi
echo $Calculation

