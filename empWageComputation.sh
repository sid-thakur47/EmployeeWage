#!/bin/bash -x

declare -a empDailyWageArr
declare -A empDailyWageDict

PART_TIME=1
FULL_TIME=2
NUM_WORKING_DAYS=20
EMP_RATE_PER_HOUR=20
MAX_HR_IN_MONTH=4

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours() {
		case $rand in
			$PART_TIME)
				workHours=4
				;;
			$FULL_TIME)
				workHours=8
				;;
			*)
				workHours=0
				;;
		esac
	echo $workHours
}

function getTotalWorkingHours() {
	totalWorkingHours=$(($totalWorkingHours + $workHours))
	echo "Total Working Hours:"$totalWorkingHours
}

function getTotalSalary() {
	totalSalary=$(($totalWorkingHours * $EMP_RATE_PER_HOUR))
	echo "Total Salary:" $totalSalary
}

function getEmpDailyWage() {
	wagePerDay=$(($workHours * $EMP_RATE_PER_HOUR))
	echo $wagePerDay
}
function computeEmpWages() {
	while [[ $totalWorkHours -lt $MAX_HR_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
	 	do
			((totalWorkingDays++))
			rand=$(($RANDOM%3))
			workHours="$( getWorkingHours $rand )"
			totalWorkingHours=$(($totalWorkingHours + $workHours))
			empDailyWageArr[$totalWorkingDays]="$(getEmpDailyWage)"
			empDailyWageDict[$totalWorkingDays]="$(getEmpDailyWage)"

		done
		echo "Day:"${!empDailyWageDict[*]}
		echo "Daily Wage:"${empDailyWageArr[*]}
}

computeEmpWages
getTotalWorkingHours
getTotalSalary
