#!/bin/bash -x

#Constants
Head=0
Tails=0

#variables
HH=0
HT=0
TH=0
TT=0

declare -A singlet

function percentagesinglet(){
	percentageHead=$(( (${singlet[H]}/20)*100 ))
	echo "H" $percentageHead
	percentagetails=$(( (${singlet[H]}/20)*100 ))
	echo "T" $percentagetails

}
declare -A Doublet
  function percentageDoublet() {
      percentageHH=$(( (${doublet[HH]}/20)*100 ))
        echo "HH"$percentageHH

       percentageHT==$(( (${doublet[HT]}/20)*100 ))
        echo "HT" $percentageHT

	    percentageTT=$(( (${doublet[TT]}/20)*100 ))
        echo "TT" $percentageHT

	    percentageTH=$(( (${doublet[TH]}/20)*100 ))
        echo "TH" $percentageTH

}

for (( i=1; i<=20; i++ ))
do
	flipCoin=$((RANDOM%2))
	if (( $flipCoin==0 ))
	then
		echo "HH"
		((headHead++))
		doublet[HH]=$headHead
	elif (($flipCoin==0 ))
     then
		  echo "HT"
		((headTail++))
		doublet[HT]=$headTail
    elif(( $flipCoin==0 ))
        then
                echo "HT"
                ((headTail++))
                doublet[HT]=$headTail
	 elif (( $flipCoin==0 ))
	 then
                echo "TT"
                ((tailTail++))
                doublet[TT]=$tailTail
	elif (( $flipCoin==0 ))
         then
                echo "TH"
                ((tailHead++))
                doublet[TH]=$tailHead
	else
		echo "false"

        fi
done

echo "[ ${singlet[@]} ]"
echo "[ ${doublet[@]} ]"
percentagesinglet
percentageDoublet
