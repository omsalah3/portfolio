#!/bin/bash
hashFile="secret.txt"
#psvariable=$(cat "$hashFile")
read -rsp "Enter Password:" password
result=$(echo $password | sha256sum -c $hashFile)

#result=$(echo $password | sha256sum )
echo $result 
echo $hashFile
if [ "$result" == "-: OK" ]; then
    echo "Access Granted"
    exit 0
else
    echo "Access denied"
    exit 1

fi
