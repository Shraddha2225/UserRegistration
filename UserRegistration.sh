#!/bin/bash -x
#used for on exterbnal globbing
shopt -s extglob
#welcome message
echo "Welcome To User Registration validation"
#patterns
firstName="^[A-Z]{1}[a-z]{3,}$"
firstNameAndlastName="^[A-Z]{1}[a-z]{3,}[[:space:]][A-Z]{1}[a-z]{3,}$"
validEmail="^[a-zA-Z]{3,}[+-._]*{1}[a-zA-Z]*{3,}[@]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,3}[.]*{1}[a-zA-Z]*{2,3}$"
validMobileNumber="^[0-9]{2}[[:space:]][0-9]{10}$"

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

function validEmail()
{
	read -p "Enter Valid Email"  input
	if [[ $input =~ $validEmail ]]
	then
		echo "Valid Email"
	else
		echo "Please Enter A Valid Email"
	fi
}

function mobileNumber()
{
	read -p "Enter Valid Mobile Number"  input
	if [[ $input =~ $validMobileNumber ]]
	then
		echo "Valid Mobile Number"
	else
		echo "Please Enter A Valid Mobile Number"
	fi
}

#calling function
firstName
FirstAndlastName
validEmail
mobileNumber
