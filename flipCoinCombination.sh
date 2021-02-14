#!/bin/bash -x
Head=0
Tail=0
declare -A singlet

function percentagesinglet() {
              percentageHead=$(( ${singlet[H]}/10*100 ))
               echo $percentageHead
                 percentageTail=$(( ${singlet[H]}/10*100 ))
                     echo $percentageTail
}
for ((i=1; i<=10; i++))
do
   flipCoin=$((RANDOM%2))

    if [ $flipCoin==1 ]
      then
         echo "Head"
           ((countHead++))
          singlet[H]=$Head
      else
         echo "Tail"
         ((countTail++))
         singlet[T]=$Tail
    fi
done
echo $Head
echo $Tail
echo "[ ${singlet[@]} ]"
