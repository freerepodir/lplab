# "Time of last modification : $(stat -c %y file1.txt)"
# "Number of hard links      : $(stat -c %h file1.txt)"
# "Permissions               : $(stat -c %A file1.txt)"
# "File Type                 : $(stat -c %F file1.txt)"


for i in $*
do
if [ -d $i ]
then
echo “Given directory name is found as $i”
fi
if [ -f $i ]
then
echo “Given name is a file as $i “
fi
echo “Type of file/directory $i”
file $i
echo “Last access time is:”
ls -l $i | cut -c 31-46
echo  "no.of links"
ln $i
if [ -x $i –a -w $i -a –r $i ]
then
echo “$i contains all permission”
else
echo “$i does not contain all permissions”
fi
done
