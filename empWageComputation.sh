#!/bin/bash -x
EMPLOYEE_RATE_PER_HOUR=20
WORKING_DAYS_PER_MONTH=20

for (( day=1; day<=$WORKING_DAYS_PER_MONTH; day++ ))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
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
	salary=$(($empHours * $EMPLOYEE_RATE_PER_HOUR))
	totalSalary=$(($totalSalary + $salary))
done
echo $salary $totalSalary
