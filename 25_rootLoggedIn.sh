user=$(whoami)
if [ $user != "root" ]
then
echo "Current user not root user"
exit 1
fi
echo "The five current Running Process Information"
echo "--------------------------------------------"
ps -ef|head -5
