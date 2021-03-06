clear 
echo ------------------------------------------------------------------------------ 
echo "Hello, "$USER". *****This Script Will Calculate & Record Student Grade ***** "
echo ------------------------------------------------------------------------------ 

echo Enter The Student Name and Press [ENTER]:
read name 
if [[ "$name" =~ ^-?[0-9]+$ ]] || [[ "$name" =~ ^-?[0-9]*[.,] ]]
then
echo Please Enter the Student Name in Text [No Number]
read name
fi

echo Enter The Student ID and Press [ENTER]:
read rno 
if ! [[ "$rno" =~ ^[0-9]+$ ]]
then
echo Please Enter The Student ID in Number [No Text]
read rno
fi

echo Enter The Student Gender and Press [ENTER]:
read gen
if [[ "$gen" =~ ^-?[0-9]+$ ]] || [[ "$gen" =~ ^-?[0-9]*[.,] ]]
then
echo Please Enter the Student Gender in Text [No Number]
read gen
fi

echo Enter The Student Assignment Mark *20 as Max* and Press [ENTER]:
read m1
if ! [[ "$m1" =~ ^[0-9]+$ ]]
then
echo Please Enter the Student Assignment in Number [No Text]
read m1
fi
while [ $m1 -gt 20 ]
do
echo Mark Greater Than 20 is NOT Acceptable *Please Try Again* and Press [ENTER]:
read m1
done


echo Enter The Student Lab Participation Mark *10 as a Max* and Press [ENTER]: 
read m2
if ! [[ "$m2" =~ ^[0-9]+$ ]]
then
echo Please Enter the Student Lab Participation in Number [No Text]
read m2
fi
while [ $m2 -gt 10 ]
do
echo Mark Greater Than 10 is NOT Acceptable *Please Try Again* and Press [ENTER]:
read m2
done


echo Please Enter The Student Quiz Mark *10 as a Max* and Press [ENTER]:
read m3 
if ! [[ "$m3" =~ ^[0-9]+$ ]]
then
echo Please Enter The Student Quiz Mark in Number [No Text]
read m3 
fi
while [ $m3 -gt 10 ]
do
echo Mark Greater Than 10 is NOT Acceptable *Please Try Again* and Press [ENTER]:
read m3
done

echo Enter The Student Midterm Mark *30 as a Max* and Press [ENTER]: 
read m4 
if ! [[ "$m4" =~ ^[0-9]+$ ]]
then
echo Please Enter The Student Midterm Mark in Number [No Text]
read m4
fi
while [ $m4 -gt 30 ]
do
echo Mark Greater Than 30 is NOT Acceptable *Please Try Again* and Press [ENTER]:
read m4
done


echo Enter The Student Final Mark *30 as a Max* and Press [ENTER]:
read m5 
if ! [[ "$m5" =~ ^[0-9]+$ ]]
then
echo Please Enter The Student Final Mark in Number [No Text]
read m5
fi
while [ $m5 -gt 30 ]
do
echo Mark Greater Than 30 is NOT Acceptable *Please Try Again* and Press [ENTER]:
read m5
done


tot=$(expr $m1 + $m2 + $m3 + $m4 + $m5) 
echo "----------------------------------------">>OSSGrades.csv
echo "****Student ID $rno Grading Report****">>OSSGrades.csv 
echo "----------------------------------------">>OSSGrades.csv
echo "Student Name    : $name">>OSSGrades.csv
echo "ID              : $rno">>OSSGrades.csv 
echo "Gender          : $gen">>OSSGrades.csv
echo "Assignment      : $m1">>OSSGrades.csv 
echo "Participation   : $m2">>OSSGrades.csv 
echo "Quiz            : $m3">>OSSGrades.csv 
echo "Midterm         : $m4">>OSSGrades.csv 
echo "Final           : $m5">>OSSGrades.csv 
echo "Total           : $tot">>OSSGrades.csv 


 if [ $tot -ge 91 ] 
 then 
  echo "Grade           : A">>OSSGrades.csv

 elif [ $tot -ge 90 ] 
 then 
         echo "Grade           : A-">>OSSGrades.csv 

 elif [ $tot -ge 81 ] 
 then 
         echo "Grade           : B">>OSSGrades.csv 

 elif [ $tot -ge 80 ] 
 then 
         echo "Grade           : B-">>OSSGrades.csv 

 elif [ $tot -ge 71 ] 
 then 
         echo "Grade           : C">>OSSGrades.csv 

 elif [ $tot -ge 70 ] 
 then 
         echo "Grade           : C-">>OSSGrades.csv 

 elif [ $tot -ge 61 ] 
 then 
         echo "Grade           : D">>OSSGrades.csv 

 elif [ $tot -le 60 ] 
 then 
         echo "Grade           : F">>OSSGrades.csv 

 fi 

echo "----------------------------------------">>OSSGrades.csv 

