courses=("CSE" "MECH" "CIVIL" "EEE" "ECM" "IT")
length=${#courses[@]}
echo
echo "Printing all the elements of the array using 
while loop :"
i=0
while [ $i -lt $length ]
do
echo "Element at index $i : ${courses[i]}"
i=$((i+1))
done
echo
echo "Printing all the elements of the array using for 
loop :"
for course in ${courses[@]}
do
echo $course
done
echo
echo "Printing all the elements of the array using 
advanced for loop :"
for ((i=0;i<length;i++))
do
echo "Element at index $i : ${courses[i]}"
done