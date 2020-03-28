random=$(($RANDOM%2))
if [ $random -eq 1 ]
	then 
		empRatePerHour=20
		empHours=8
		sal=$(($empRatePerHour * $empHours))
		echo "Salary is:$sal"
	else
		echo "Employee does not work"
fi
