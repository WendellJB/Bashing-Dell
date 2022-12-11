#!/bin/bash

LAW_STUDENTS='john_walsh-21 kelvin_green-99 john_browning00 tim_sawyer01 nick_ferdell02 mike-jefferson03 scott_ferry04 terry_glenn04 will_slapahoe_smith'

if [ $1 = create ]
then 
for x in $LAW_STUDENTS
do
echo "The user $x will be created shortly."
aws iam $1-user --user-name $x 
done
else
for x in $LAW_STUDENTS
do
echo "The user $x will be deleted shortly and will no longer exist."
aws iam $1-user --user-name $x
done
fi

