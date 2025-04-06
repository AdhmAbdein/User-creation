#!/bin/bash

username=$1
expirationdays=$2

if id "$username"
then
     echo "user $username already exist"
else
     useradd -e "$expirationdays" "$username"
     echo "user $username created successfully"
fi