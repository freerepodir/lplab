function LCM()
{
n1=$1
n2=$2
lcm=$n2
until [ $(($lcm%$n1)) -eq 0 ] && [ $(($lcm%$n2)) -eq 0 ]
do
lcm=$((lcm+1))
done
echo "LCM of $n1 and $n2 is $lcm."
}

function GCD()
{
n1=$1
n2=$2
gcd=$n1
until [ $(($n1%$gcd)) -eq 0 ] && [ $(($n2%$gcd)) -eq 0 ]
do
gcd=$((gcd-1))
done
echo "GCD of $n1 and $n2 is $gcd."
}

function findLCMGCD()
{
if [ $1 -eq 0 ] || [ $2 -eq 0 ]
then
echo "One of the numbers entered is 0."
echo "Invalid input. Please try again."
exit
else
if [ $1 -lt $2 ]
then
n1=$1
n2=$2
else
n1=$2
n2=$1
fi
LCM $n1 $n2
GCD $n1 $n2
fi
}


read -p "Enter the first number." a
read -p "Enter the second number." b
findLCMGCD $a $b
