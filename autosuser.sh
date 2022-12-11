#!/bin/bash

USERS='Emanuel Wendell Jerry-Baker Ms.Baker Savannah-James Brice-James Bronny-James Zuri-James MJ Jeffery-Jordan Marcus-Jordan girl-Jordan Kobe Gigi Magic'


for x in $USERS
do
echo "Creating user $x"
aws iam $1-user --user-name $x
echo "adding users to group Executives"
aws iam add-user-to-group --user-name $x --group-name Executives
done

