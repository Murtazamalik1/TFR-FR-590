#! /bin/bash

perHourSalary=20;
fulldayhours=0;
totalSalary=0;

for ((day=1; day<=20 ;day++))
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
		#echo "Employee is absent";
		fulldayhours=0;
		;;

		1)
		#echo "Employee is present";
		 fulldayhours=8;
		;;

		2)
		#echo "Employee is working as part time";
		workingHour=4;
		;;
	esac
	salary=$(($perHourSalary * $fulldayhours));
	totalSalary=$(($totalSalary + $salary));
done

echo "Employee has earned $totalSalary $ in a month";
