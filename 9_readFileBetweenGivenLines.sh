if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]
then
echo -e "Invalid command syntax. \nCorrect syntax : bash filename.sh input-file startline endline\n\n"
exit
else
file_name="$1"
start=$2
end=$3

if [ ! -f "$file_name" ]
then
echo -e "File \""$file_name"\" not found. Please try again.\n\n"
exit
fi

declare -a arr
while read -r line
do
arr+=("$line")
done< "$file_name"

len=${#arr[*]}
if [ $end -gt $len ]
then
echo -e "The last line given as input, $end, exceeds file length $len.\n"
end=$((len-1))
else
end=$((end-1))
fi
i=$((start-1))
while [ $i -le $end ]
do
echo "Line $i : ${arr[$i]}"
i=$((i+1))
done
fi
