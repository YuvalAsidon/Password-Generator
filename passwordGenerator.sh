#!/bin/bash

echo "password generator"

read -p "Please enter the length for the password: " LEN

echo "You can choose 1 of the 5:"

for PASSWORD1 in $(seq 5);
do 
	echo "$PASSWORD1 -"
	openssl rand -base64 48 | cut -c1-$LEN 
done 
