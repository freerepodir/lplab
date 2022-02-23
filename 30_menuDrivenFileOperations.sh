echo "File Operations :"
echo
echo "1) Read the contents of the file."
echo "2) Append text to the file."
echo "3) Overwrite the contents of the file."
echo "4) Delete the file."
echo
file="random.txt"
auxfile="new.txt"
read -p "Select your choice from the following." c
case $c in
1)
if [ -z $file ]
then
echo "No file exists with the name $file."
else
echo "The contents of the file, $file are :"
cat $file
fi
;;
2)
read -p "Enter the text to be appended to $file." string
echo $string >> $file
;;
3)
read -p "Enter the text to overwrite $file." string
echo $string > $file
;;
4)
cat $file > $auxfile
rm $file
echo "$file has been deleted and its contents have 
been written to $auxfile."
;;
*)
echo "Invalid option entered. Please try again."
;;
esac

