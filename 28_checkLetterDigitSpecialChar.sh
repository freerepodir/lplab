read -p "Enter a character." n 
case $n in 
[a-zA-Z])
echo "$n entered is a letter."
if [[ $n =~ [aeiouAEIOU] ]]
then
echo "$n entered is a vowel."
else
echo "$n entered is a consonant."
fi
;;
[0-9])
echo "$n is a digit."
;;
[^A-Za-z0-9])
echo "$n is a special character."
;;
*)
echo "Invalid entry. Please try again."
;;
esac
