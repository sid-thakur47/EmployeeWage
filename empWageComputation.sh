#!/bin/bash -x

empRatePerHour=20
random=$(($RANDOM%3))
if [ $random -eq 1 ]
	then
		empHours=4
	elif [ $random -eq 2 ]
	then
		empHours=8
	else
		empHours=0
		fi
sal=$(($empRatePerHour * $empHours))
echo $sal
