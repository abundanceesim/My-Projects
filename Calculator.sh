#!/bin/bash
# Filename : mycalc.sh
# Student Name: Abundance Esim
# Student Number: 041025890
# Semester: 2021F (Fall 2021)
# Course Code: CST8102
# Course Section: 311
# Instructor's Name: Prof. Saif Terai
# Date of creation: 24 Nov 2021
# Description: Calculator that performs basic operations of addition and subtraction.


clear
# add function calculates the sum of the two numbers.
add() {
   (( sum = $1 + $2 ))  
   echo "Sum of $1 and $2 is " $sum
}

# subtract function calculates the difference between the two numbers.
subtract() {
   (( difference = $1 - $2 ))  
   echo "Difference of $1 and $2 is " $difference
}

incorrectParam() {     
  echo "First number:"
    read first_num
  echo "Enter operation: "
    read operation
  echo "Second number: "
    read second_num
    
  if [ $operation = '+' ]
   then 
      add $first_num $second_num
   elif [ $operation = '-' ]
   then
      subtract $first_num $second_num
  fi      
}


if [ $# -ne 3 ]    
  then
  echo "Incorrect Number of Parameters"
  echo "Usage: mycalc 4 + 6"
  echo "Usage: mycalc 21 - 3"
  incorrectParam
fi


if [ $# -eq 3 ]  # check number of arguments at command line
   then
   if [ $2 = '+' ]
   then 
      add $1 $3
   elif [ $2 = '-' ]
   then
      subtract $1 $3
   else 
      echo "Incorrect Operator" $2
      echo "+ to add"
      echo "- to subtract"
   fi
fi

# eof: mycalc.sh
