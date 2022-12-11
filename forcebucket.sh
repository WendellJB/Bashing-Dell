#!/bin/bash

BUCKET=$(aws s3 ls | grep wendell | cut -c21-45)

echo $BUCKET

if [ $BUCKET = wendellwasmissinginaction ]
then
echo "your bucket $BUCKET is avaiable to use"
else
echo "your bucket $BUCKET is not available, creating bucket ......"
aws s3 mb s3://wendellwasmissinginaction
fi
