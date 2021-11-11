#! /usr/bin/env bash

echo "Hello $1"

while [[ true ]]; do
    echo "Please enter the numbers"
    read a
    read b

    echo "Please choose the type of operation :"
    echo "1. Add"
    echo "2. Subtract"
    echo "3. Multiply"
    echo "4. Division"
    read choose

    result=0
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
    *)
        echo "This operation is not supported."
        exit 0
        ;;
    esac

    echo "Result value is : $result"

    echo "Want to continue ? yes or no"
    read ans

    if [ $ans == "no" ]; then
        break
    else
        echo "You can continue.."
    fi

done