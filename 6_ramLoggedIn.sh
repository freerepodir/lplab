until [ $(whoami) == "Ram" ]
do
echo -e "\nRam has not logged in yet."
echo -e "Retrying in 30 seconds...\n\n"
sleep 30
done
echo "Ram has finally logged in."
