i=0
echo -e "SNo\tDate and Time of Creation\t\tFilename"
for file in $(ls)
do
i=$((i+1))
time=$(stat -c "%w" $file)
echo -e "$i\t$time\t$file"
done
