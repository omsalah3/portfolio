#!/bin/bash

read -rsp "Enter Password:" Password
echo -n "$Password | sha256sum > secret.txt"

if [ sha256sum -c secret.txt ]; then

    echo "Access Granted"
    exit 0
else
    echo "Access denied"
    exit 1

fi