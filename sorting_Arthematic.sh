#!/bin/bash -x
read -p "enter the 1st no" a
read -p "enter the 2nd no" b
read -p "enter the 3rd no" c
function arthematic_Compute()
{
  echo "$(( $a+$b*$c ))"
}
arthematic_Compute

function arthematic_Compute_second()
{
  echo "$(( $a*$b+$c ))"
}
arthematic_Compute_second
function arthematic_Compute_third()
{
  echo "$(( $c+$a/$b ))"
}
arthematic_Compute_third
function arthematic_Compute_fourth()
{
  echo "$(( $a%$b+$c ))"
}
arthematic_Compute_fourth
