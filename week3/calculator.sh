#!/bin/bash

echo "Welcome to the Simple Calculator!"
echo "Please choose an operation:"
echo "1) Addition (Blue)"
echo "2) Subtraction (Green)"
echo "3) Multiplication (Red)"
echo "4) Division (Purple)"
read -p "Enter the number of your choice: " choice

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

if [ $choice -eq 1 ]; then
  echo -e "\033[34m$num1 + $num2 = $(($num1 + $num2))\033[0m"
elif [ $choice -eq 2 ]; then
  echo -e "\033[32m$num1 - $num2 = $(($num1 - $num2))\033[0m"
elif [ $choice -eq 3 ]; then
  echo -e "\033[31m$num1 * $num2 = $(($num1 * $num2))\033[0m"
elif [ $choice -eq 4 ]; then
  echo -e "\033[35m$num1 / $num2 = $(($num1 / $num2))\033[0m"
else
  echo "Invalid choice. Please try again."
fi
