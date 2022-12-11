#!/bin/bash


MED_STUD='med_stud01 med_stud02 med_stud03 med_stud04 med_stud05 med_stud06 med_stud07 med_stud08 med_stud09 med_stud10'

if [ $1 = create ]
then
for x in $MED_STUD
do
echo "The medical student $x will be created shortly."
aws iam $1-user --user-name $x
	done
else
for x in $MED_STUD
do
echo "The medical student $x will be deleted shortly and will no longer exist."
aws iam $1-user --user-name $x
done
fi
