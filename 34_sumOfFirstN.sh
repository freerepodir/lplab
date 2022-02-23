echo "Enter a number to find the sum of all numbers until that number."
read n
sum=0
for((i=0;i<=$n;i++))
do
sum=$((sum+i))
done
echo "The sum of first $n elements is $sum."
