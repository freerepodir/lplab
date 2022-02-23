count=0
words=0
chars=0

file="some_file.txt"
while read c;
do
	count=$((count+1))
	for word in $c
	do
		echo $word
		words=$((words+1))
		chars=$((chars+${#word}))
	done
done < $file
echo $count
echo $words
echo $chars
