#!/bin/bash

./passwordCheck.sh
if [ $? -eq 0 ]
then
    echo "Access granted. Please select an option:"
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"
    read -p "Enter your choice: " choice
    case $choice in
        1) echo "Creating folder..."
           # code to create a folder goes here
           read -p "type the name of the folder you would like to create" folderName

mkdir "$folderName";;
        2) echo "Copying folder..."
           # code to copy a folder goes here
          ead -p "type the name of the folder you would like to copy: " folderName

if [ -d "$folderName" ]; then

    read -p "type the name of the destination folder: " newFolderName

    cp -r "$folderName" "$newFolderName"

else
    echo "I couldn't find that folder"

fi ;;
        3) echo "Setting password..."
           # code to set a password goes here
          echo "Enter the name of the forlder"
read folder

#enter the secret password
read -rsp "Enter the secret password:" password

# make a folder as the user shose
mkdir $folder

#save the password in the secret.txt in the chosen folder
echo $password > $folder/secret.txt
echo "password saved in $folder/secret.txt" ;;
        *) echo "Invalid choice. Exiting..."
           exit 1
           ;;
    esac
else
    echo "Access denied. Exiting..."
    exit 1
fi
