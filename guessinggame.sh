#!/usr/bin/env bash


echo ***"Start guessing game"***

if [[ $1 -eq 10 ]]
then
  echo "Thanks bro!! for entering [ $1 ] your winner!!"
else
  echo "Wrong You entered:[ $1 ], hint : type number 1 - 10 .godluck!."
fi

echo  ---"End Program"---
