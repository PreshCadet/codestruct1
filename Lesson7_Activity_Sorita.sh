#!/bin/bash
#Presh VirtualBox

echo "Enter a number of users to create: "
read Users
echo "Creating $Users users"
echo "-----------------------------------------"

for i in $(seq $Users); do 
	echo "Enter Username..."
	read Uname
	sudo useradd -m $Uname
	sudo usermod $Uname -s bash
	echo "Output:"
	sudo cat /etc/passwd | tail -1
	
	echo ""
	echo "Set your password:"
	read pass
	sudo usermod $Uname -p $pass
	echo "Output:"
	sudo cat /etc/shadow | grep $Uname
	
	
	echo ""
	sleep 1 
done

echo "Done! Thank you"
	
