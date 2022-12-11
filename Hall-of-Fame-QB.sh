#!/bin/bash

HOFQBS='Tom-Brady Joe-Montana Steve-Young Mike-Vick Pat-Mahomes Kurt-Warner Peyton-Manning'

if [ $1 = create ]
then
for x in $HOFQBS
do

echo "Creating Hall Of Fame user account."
aws iam $1-user --user-name $x

echo "Adding Hall Of Famer user to group HOF-QB1s."
aws iam add-user-to-group --user-name $x --group-name HOF-QB1s

done
else
for x in $HOFQBS
	
do
echo "Deleting user $x."
aws iam $1-user --user-name $x
done
fi

