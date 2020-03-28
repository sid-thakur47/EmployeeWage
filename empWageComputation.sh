#!/bin/bash -x
NUM_WORKING_DAYS=20
EMP_RATE_PER_HOUR=20
MAX_HR_IN_MONTH=10

totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -lt $MAX_HR_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
 do
	((totalWorkingDays++))
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
totalEmpHr=$(($totalEmpHr+$empHours))
done
totalSalary=$(($totalEmpHr * $EMP_RATE_PER_HOUR))
echo $totalEmpHr $totalSalary
