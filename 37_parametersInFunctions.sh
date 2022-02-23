function calculateSimpleInterest()
{
principal=$1
rate=$2
time=$3
echo "Number of function parameters : $#"
echo "All the function parameters sent : $@"
echo
echo "Parameter 1, Principal == $principal"
echo "Parameter 2, Rate Of Interest == $rate"
echo "Parameter 3, Time == $time"
simple_interest=$((($principal*$rate*$time)/100))
echo
echo "The simple interest calculated : 
$simple_interest"
}

calculateSimpleInterest 5000 2 20
