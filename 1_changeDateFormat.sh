read -p "Enter the date in MM/DD/YYYY format." inputDate
startTime=$(date +%s) 
echo "Entered Date : $inputDate"
formattedDate=$(date -d $inputDate +"Date : %A, %d %B, %Y")
echo "Formatted Date : $formattedDate"
endTime=$(date +%s)
execTime=$((endTime-startTime))
echo "Time taken for execution : $execTime seconds."
