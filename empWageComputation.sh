random=$(($RANDOM%2+1))
if [ $random -eq 1 ]
	then 
		echo "Employee is Present"
	else
		echo "Employee is Absent"
fi
