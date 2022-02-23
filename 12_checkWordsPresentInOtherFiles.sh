if [ $# -lt 2 ]
then
echo -e "Invalid Syntax. \nYou have entered <2 arguments." 
echo -e "Correct Syntax : bash <program-name.sh> <file1-name> <file2-name> ...<filen-name>."
else

for i in `cat $1`
do
echo -e "\n\nMatches for the word = '$i'"
echo -e "-------------------------------------------------"
echo -e "-------------------------------------------------"
for j in $@
do
if [ $j != $1 ]
then
matches=$(grep -c "$i" $j)
if [ $matches -ne 0 ]
then
echo "$j : $matches"
echo -e "$(grep -n "$i" $j)"
echo -e "------------\n"
fi
fi
done
done
fi
