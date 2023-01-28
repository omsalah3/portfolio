#!/bin/bash

hashFile="secret.txt"

read -rsp "Enter Password:" Password
result="echo $Password | sha256sum -c $hashFile"

if [ "$result" == "-:ok" ]; then

    echo "Access Granted"
    exit 0
else
    echo "Access denied"
    exit 1

fi