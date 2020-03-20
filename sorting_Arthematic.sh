#!/bin/bash 
read -p "enter the 1st no:" a
read -p "enter the 2nd no:" b
read -p "enter the 3rd no:" c

function arthematic_Compute()
{
  echo "$(( $a+$b*$c ))"
}
result[$((count++))]="$( arthematic_Compute $(($a,$b,$c)) )"

function arthematic_Compute_second()
{
  echo "$(( $a*$b+$c ))"
}
result[$((count++))]="$( arthematic_Compute_second $(($a,$b,$c)) )"

function arthematic_Compute_third()
{
  echo "$(( $c+$a/$b ))"
}
result[$((count++))]="$( arthematic_Compute_third $(($a,$b,$c)) )"

function arthematic_Compute_fourth()
{
  echo "$(( $a%$b+$c ))"
}
result[$((count++))]="$( arthematic_Compute_fourth $(($a,$b,$c)) )"

echo "${result[@]}"
echo "${!result[@]}"

for (( i=0; i<4; i++ ))
do
     arr[i]=${result[$i]}
     echo "${arr[i]}"
done
