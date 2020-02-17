#!/bin/bash -x
#used for on exterbnal globbing
shopt -s extglob
#welcome message
echo "Welcome To User Registration validation"
#patterns
firstName="^[A-Z]{1}[a-z]{3,}$"
firstNameAndlastName="^[A-Z]{1}[a-z]{3,}[[:space:]][A-Z]{1}[a-z]{3,}$"
function firstName()
{
	read  -p  "Enter First Name" input
	if [[ $input =~ $firstName ]]
	then
		echo "Valid First Name"
	else
		echo "Please Enter A Valid First Name"
	fi
}

function FirstAndlastName()
{
	read  -p  "Enter Last Name"  input
	if [[ $input =~ $firstNameAndlastName ]]
	then
		echo "Valid First And Last Name"
	else
		echo "Please Enter A Valid Last Name"
	fi
}

#calling function
firstName
FirstAndlastName
