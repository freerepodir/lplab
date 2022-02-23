read -p "Enter first number" a
read -p "Enter second number" b
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
read -p "Enter Choice" ch
case $ch in
1)
temp=$((a+b))
echo "$a + $b = $temp"
;;
2)
temp=$((a-b))
echo "$a - $b = $temp"
;;
3)
temp=$((a*b))
echo "$a * $b = $temp"
;;
4)
temp=$((a/b))
echo "$a / $b = $temp"
;;
*)
echo "Nice"
esac
