file_name="some_file.txt"
if [ ! -f "$file_name" ]
then
echo "File \""$file_name"\" not found. Please try again."
exit
fi

declare -a arr
while read -r line
do
arr+=("${line}")
done< "$file_name"


i=${#arr[*]}
i=$((i-1))
while [ $i -ge 0 ]
do
echo "${arr[$i]}"
 i=$((i-1))
done
