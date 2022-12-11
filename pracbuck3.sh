#!/bin/bash
BUCKET=$(aws s3 ls | grep street | cut -c20-47)

if [ $BUCKET = dirtystreetconfessions ]
then
echo "Your bucket $BUCKET is currently available to use."
else
echo "Your bucket $BUCKET is currently not available. Creating ..................."
aws s3 mb s3://dirtystreetconfessions
fi
