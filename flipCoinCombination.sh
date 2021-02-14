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
 declare -A Triplet

function percentageThriplet() {

	percentageHHH=$(( (${thriplet[HHH]}/20)*100 ))
	echo "HHH" $percentagehHH

	 percentageHHT=$(( (${thriplet[HHT]}/20)*100 ))
        echo "HHT" $percentagehHT

	 percentageHTH=$(( (${thriplet[HTH]}/20)*100 ))
        echo "HTH" $percentagehTH

	 percentageTHH=$(( (${thriplet[THH]}/20)*100 ))
        echo "THH" $percentagetHH

	 percentageHTT=$(( (${thriplet[HTT]}/20)*100 ))
        echo "HTT" $percentagehTT

	 percentageTHT=$(( (${thriplet[THT]}/20)*100 ))
        echo "THT" $percentageThT

	 percentageTTH=$(( (${thriplet[TTH]}/20)*100 ))
        echo "TTH" $percentagetTH

	 percentageTTT=$(( (${thriplet[TTT]}/20)*100 ))
        echo "TTT" $percentagetTT

}
for (( i=1; i<=20; i++ ))
do
	flip=$((RANDOM%2))
	if (( $flip==1 ))
	then
		echo "head won"
		((coutHeadWin++))
		 singlet[H]=$coutHeadWin
	else
		echo "tails won"
		((countTailsWin++))
		singlet[T]=$countTailsWin
	fi
done


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

for (( i=1; i<=20; i++ ))
do
        flipCoin=$((RANDOM%2))
        if (( $flipCoin==1 ))
        then
                echo "HHH"
                ((hHH++))
                thriplet[HHH]=$hHH
        elif (( $flipCoin==0 ))
        then
                echo "HHT"
                ((hHT++))
                thriplet[HHT]=$hHT
	elif (( $flipCoin==0  ))
        then
                echo "HTH"
                ((hTH++))
                thriplet[HTH]=$hHT
	 elif (( $flipCoin==1 ))
        then
                echo "THH"
                ((tHH++))
                thriplet[THH]=$tHH
	 elif (( $flipCoin==0 ))
        then
                echo "HTT"
                ((hTT++))
                thriplet[HTT]=$hTT
	 elif (( $flipCoin==1 ))
        then
                echo "THT"
                ((tHT++))
                thriplet[THT]=$tHT
	 elif (( $flipCoin==0 ))
        then
                echo "TTH"
                ((tTH++))
                thriplet[TTH]=$tHT
	 elif (( $flipCoi==1 ))
        then
                echo "TTT"
                ((tTT++))
                thriplet[TTT]=$tTT
	else
		echo "false"
   fi
done
echo "[ ${singlet[@]} ]"
echo "[ ${!singlet[@]} ]"
echo "[ ${doublet[@]} ]"
echo "[ ${!doublet[@]} ]"
echo "[ ${thriplet[@]} ]"
echo "[ ${!thriplet[@]} ]"

percentageSinglet
percentageDoublet
percentageThriplet
