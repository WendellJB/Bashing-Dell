#!/bin/bash

BUCKETS='l2365 mj1234 dw3321 lo743 melo766'
for x in $BUCKETS
do
aws s3 mb s3://$x
done
