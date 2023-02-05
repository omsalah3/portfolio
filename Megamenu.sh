#!/bin/bash

function create_folder {
  echo "Enter folder name:"
 read -p "type the name of the folder you would like to create" folderName

mkdir "$folderName"
					
 
 # read folder_name
 # mkdir $folder_name
  echo "Folder created successfully!"
}

function copy_folder {
read -p "type the name of the folder you would like to copy: " folderName

if [ -d "$folderName" ]; then

    read -p "type the name of the destination folder: " newFolderName

    cp -r "$folderName" "$newFolderName"

else
    echo "I couldn't find that folder"

fi
  #echo "Enter source folder name:"
 # read source
 # echo "Enter destination folder name:"
  #read destination
  #cp -r $source $destination
  echo "Folder copied successfully!"
}

function set_password {
  echo "Enter password:"
  read -s password
  echo "Password set successfully!"
}

function calculator {
  echo "Enter an expression (e.g. 2 + 2):"
  read expression
  result=$(echo "$expression" | bc)
  echo "Result: $result"
}

function create_week_folders {
  for i in {1..52}; do
    mkdir "week$i"
  done
  echo "Week folders created successfully!"
}

function check_file_names {
  echo "Enter file extension (e.g. txt):"
  read extension
  files=$(ls | grep ".$extension")
  echo "Files with .$extension extension:"
  echo "$files"
}

function download_file {
  echo "Enter URL of the file to download:"
  read url
  wget $url
  echo "File downloaded successfully!"
}

while true; do
  echo "Choose an option:"
  echo "1. Create a folder"
  echo "2. Copy a folder"
  echo "3. Set a password"
  echo "4. Calculator"
  echo "5. Create week number folders"
  echo "6. Check file names"
  echo "7. Download a file"
  echo "8. Exit"
  read option
  case $option in
    1) create_folder;;
    2) copy_folder;;
    3) set_password;;
    4) calculator;;
    5) create_week_folders;;
    6) check_file_names;;
    7) download_file;;
    8) exit;;
    *) echo "Invalid option, try again!";;
  esac
done
