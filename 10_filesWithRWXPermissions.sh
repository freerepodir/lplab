echo "List of files which have r-w-x permissions :"
for file in *
do
if [ -r $file -a -w $file -a -x $file ]
then
echo "$file has r-w-x permissions."
fi
done
