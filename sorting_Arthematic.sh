#!/bin/bash 
read -p "enter the 1st no:" a
read -p "enter the 2nd no:" b
read -p "enter the 3rd no:" c

function Arthematic_Compute()
{
  echo "$(( $a+$b*$c ))"
}
result[$((count++))]="$( Arthematic_Compute $(($a,$b,$c)) )"

function Arthematic_Compute_Second()
{
  echo "$(( $a*$b+$c ))"
}
result[$((count++))]="$( Arthematic_Compute_Second $(($a,$b,$c)) )"

function Arthematic_Compute_Third()
{
  echo "$(( $c+$a/$b ))"
}
result[$((count++))]="$( Arthematic_Compute_Third $(($a,$b,$c)) )"

function Arthematic_Compute_Fourth()
{
  echo "$(( $a%$b+$c ))"
}
result[$((count++))]="$( Arthematic_Compute_Fourth $(($a,$b,$c)) )"

echo "${result[@]}"
echo "${!result[@]}"

for (( i=0; i<4; i++ ))
do
     arr[i]=${result[$i]}
     echo "${arr[i]}"
done

function Sorting_Array_InDecending_Order()
{
   for (( i=0; i<4; i++ ))
   do
        for (( j=$i+1; j<4; j++ ))
        do
             if [[ ${arr[i]} -lt ${arr[j]} ]] 
             then
                  temp=${arr[i]}
                  arr[i]=${arr[j]}
                  arr[j]=$temp
             fi
        done
   done
              echo ${arr[@]}
}
res="$( Sorting_Array_InDecending_Order ${arr[@]} )"
echo "decending order is :$res"

function Sorting_Array_InAscending_Order()
{
   for (( i=0; i<4; i++ ))
   do
        for (( j=$i+1; j<4; j++ ))
        do
             if [[ ${arr[i]} -gt ${arr[j]} ]]
             then                                                                                                                                                                                                                    temp=${arr[i]}
                  arr[i]=${arr[j]}
                  arr[j]=$temp
             fi
        done
   done
              echo ${arr[@]}
}
res1="$( Sorting_Array_InAscending_Order ${arr[@]} )"
echo "Ascending order is :$res1"



