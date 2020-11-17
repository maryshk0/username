#! /bin/bash
# username.sh
# Mary Shkouratoff
echo "Enter a username: "
echo "Use lower case characters, digits, and underscore"
echo "It must start with a lower case character"
echo "It must contain at least 3 but not more than 12 characters"

read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username" 
	echo "	- 3-5 digits only!"
	echo "	- You can use lowercase characters, digits, and underscore"
	echo "	- You must start with a lowercase character"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
