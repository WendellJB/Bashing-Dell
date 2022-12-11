#i/bin/bash

WATCH='rolex234 apple312 cartier09'

for x in $WATCH
do 
aws s3 $1 s3://$x
done


