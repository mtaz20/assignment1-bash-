# assignment1-bash-
Student Grading System Programmed in Bash Script
A: How you handled setting variables and default values ?
Answer A: Each variables have its own data type such as name&gen=string which are student name and gender. ID and all student grades are=string

B: How your script should be executed ?
Answer B: The script is designed in two type on which its output is in Calumn and one by Rom, both are runable via bash shell script which their records save to a *.csv* file. 
Output By Column>> gradingSystem.sh data goes to OSSGrades.csv
Output By Row>> gradingSystemInRow.sh data goes to Grades.csv
*.sh* files are executable files which run by bash filename.sh

C:how you handled the VERBOSE variable.
Answer C: each Verbose variable deffined by IF condition and deffined the range, the output is deffined by echo statment

D:How you terminated the program early if the compilation command failed. 
Answer D: the script is tested no point detected to fail the program, if happend it will terminate by ctrl+c. No record will be saved till the last record not inserted. If its terminated the data will not be saved to its *.csv* file.

E:How you get the input from the user.
Answer E: the user should run the *.sh* file in bash shell terminal by writing "bash filename.sh". the script will run and ask the user input.

F:How you handle the input of different data type ?
Answer F: the data type assigned to each statment with IF condition such as below
String for Name and Gender data type deffined as below: 
if [[ "$name" =~ ^-?[0-9]+$ ]] || [[ "$name" =~ ^-?[0-9]*[.,] ]]
then
echo Please Enter the Student Name in Text [No Number]
read name
fi

Integer for ID and all Marks deffined as below:
if ! [[ "$m1" =~ ^[0-9]+$ ]]
then
echo Please Enter the Student Assignment in Number [No Text]
read m1

G: How to add more records to the same file ?
Answer G: It will be exacutable by bash shell terminal try to edit the *.sh* file which is the editable file.



