read -p "Enter String to test:" str
if [ -z str ] 
then
echo "Provided input string is empty"
else
echo "String is not empty"
echo "Its length is:" $(echo -n $str|wc -c)
fi
