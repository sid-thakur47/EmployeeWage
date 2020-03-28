rand=$(($RANDOM%2+1))
if [ $rand -eq 1 ]
	then 
		echo "Employee is Present"
	else
		echo "Employee is Absent"
fi
