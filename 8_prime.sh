function primeCheck() 
{
n1=$1
factors=0
i=1
until [ $i -gt $n1 ]
do
if [ $((n1%i)) -eq 0 ]
then
factors=$((factors+1))
fi
i=$((i+1))
done

if [ $factors -gt 2 ]
then
echo "$n1 is a composite number."
else if [ $factors -eq 2 ]
then
echo "$n1 is a prime number."
else
echo "$n1 is neither prime nor composite."
fi
fi
}
read -p "Enter a number to check if it is prime." n
primeCheck $n
