#!/bin/bash

SHOES='jordan1996fluegame lebron1s2008 pennybubble1993 granthill1s'

if [ $1 = mb ]
then
for x in $SHOES
do
echo "creating your bucket $x"
aws s3 $1 s3://$x
done
else
for x in $SHOES
do
echo "removing bucket $x"
aws s3 $1 s3://$x
done
fi
