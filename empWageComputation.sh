#!/bin/bash -x
numWorkingDays=20
empRatePerHour=20
for (( day=1; day<=$numWorkingDays; day++ )) 
 do
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
totalSalary=$(($totalSalary + $sal))
done
echo "Total Salary" $totalSalary
