#!/bin/bash

read -p "type the name of the folder you would like to copy: " folderName

#if the name is a valid directory

if [ -d "$folderName" ]; then

    read -p "type the name of the destination folder: " newFolderName

    cp -r "$folderName" "$newFolderName"

else


    echo "I couldn't find that folder"

fi
					