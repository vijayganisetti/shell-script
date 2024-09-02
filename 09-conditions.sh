#!/bin/bash 

num=$1

if [ $num -gt 10 ]
then
    echo "number is greater than 10"
elif [ $num -lt 10 ]
then
    echo "number is less than 10"
else
    echo "number is equal to 10"
fi