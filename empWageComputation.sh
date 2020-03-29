#!/bin/bash -x
NUM_WORKING_DAYS=20
EMP_RATE_PER_HOUR=20
MAX_HR_IN_MONTH=4

totalEmpHr=0
totalWorkingDays=0
function getWorkingHours() {
	case $1 in
		1)
			workHours=4
			;;
		2)
			workHours=8
			;;
		*)
			workHours=0
			;;
	esac
		echo $workHours
}
while [[ $totalWorkHours -lt $MAX_HR_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
 do
	((totalWorkingDays++))
	rand=$(($RANDOM%3))
	workHours="$( getWorkingHours $rand  )"
	totalWorkingHours=$(($totalWorkingHours + $workHours))
done
totalSalary=$(($totalWorkingHours * $EMP_RATE_PER_HOUR))
echo $totalWorkingHours $totalSalary


