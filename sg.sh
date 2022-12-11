#!/bin/bash


 aws ec2 $1-security-group-ingress --group-name launch-wizard-1 --protocol tcp --port $2 --cidr 0.0.0.0/0
