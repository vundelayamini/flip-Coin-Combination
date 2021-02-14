#!/bin/bash -x

flipCoin=$((RANDOM%2))
isHeads=1

if [ $flipCoin -eq $isHeads ]
then
      echo HEADS
else
      echo TAILS
fi

