#!/bin/bash -x

empRatePerHour=20
empRandomCheck=$(($RANDOM%3))

case $empRandomCheck in
			1)
				empHours=4
				;;
			2)
				empHours=8
				;;
			*)
				empHours=0
				;;
esac
sal=$(($empRatePerHour * $empHours)) 
echo $sal
