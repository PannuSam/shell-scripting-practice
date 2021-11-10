#! /usr/bin/env bash

echo "Hello $1"

echo "Please enter the numbers"
read a
read b

echo "Please choose the type of operation :"
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Division"
read choose

case $choose in
1)
let result="$a+$b"
;;
2)
let result="$a-$b"
;;
3)
let result="$a*$b"
;;
4)
let result="$a/$b"
;;
esac
echo "Result value is : $result"


