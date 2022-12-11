#!/bin/bash

BUCKETS='emanuelisfrom803 lajarridhasnotoes2222 wendellwasmissinginaction thelakersuckthisseason12'

for x in $BUCKETS
do
aws s3 mb s3://$x
done
