#!/bin/bash
./passwordCheck.sh
if [ $? -eq 0 ]
then
    echo -e "\033[0;31mAccess granted. Please select an option:\033[0m"
    #echo "Access granted. Please select an option:"

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
  echo "Enter the name of the forlder"
read folder

#enter the secret password
read -rsp "Enter the secret password:" password

# make a folder as the user chose
mkdir $folder

#save the password in the secret.txt in the chosen folder
echo $password > $folder/secret.txt
echo "password saved in $folder/secret.txt"

  
  #echo "Enter password:"
  #read -s password
  #echo "Password set successfully!"
}

function calculator {
 
echo "Welcome to the Simple Calculator!"
echo "Please choose an operation:"
echo "1) Addition (Blue)"
echo "2) Subtraction (Green)"
echo "3) Multiplication (Red)"
echo "4) Division (Purple)"
read -p "Enter the number of your choice: " choice

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

if [ $choice -eq 1 ]; then
  echo -e "\033[34m$num1 + $num2 = $(($num1 + $num2))\033[0m"
elif [ $choice -eq 2 ]; then
  echo -e "\033[32m$num1 - $num2 = $(($num1 - $num2))\033[0m"
elif [ $choice -eq 3 ]; then
  echo -e "\033[31m$num1 * $num2 = $(($num1 * $num2))\033[0m"
elif [ $choice -eq 4 ]; then
  echo -e "\033[35m$num1 / $num2 = $(($num1 / $num2))\033[0m"
else
  echo "Invalid choice. Please try again."
fi

 
 #echo "Enter an expression (e.g. 2 + 2):"
#read expression
 #result=$(echo "$expression" | bc)
  #echo "Result: $result"
}

function create_week_folders {
  for i in {1..6}; do
    mkdir "week$i"
  done
  echo "Week folders created successfully!"
}

function check_file_names {
  
if [ $# -ne 1 ]; then
  echo "Usage: filenames.sh <filenames.txt>"
  exit 1
fi

while read line; do
  if [ -f "$line" ]; then
    echo "That file exists"
  elif [ -d "$line" ]; then
    echo "That's a directory"
  else
    echo "I don't know what that is!"
  fi
done < "$1"

  
  
  #echo "Enter file extension (e.g. txt):"
  #read extension
  #files=$(ls | grep ".$extension")
  #echo "Files with .$extension extension:"
  #echo "$files"
}

function download_file {
  while true; do
  echo "Enter a website URL to download or type 'exit' to quit: "
  read url
  if [ "$url" == "exit" ]; then
    break
  fi

  echo "Enter a download location: "
  read location

  wget -P "$location" "$url"
done

  
  
  #echo "Enter URL of the file to download:"
  #read url
  #wget $url
  #echo "File downloaded successfully!"
}

while true; do
echo -e "\033[32mChoose an option:\033[0m"
  #echo "Choose an option:"
  echo -e "\033[33m1. Create a folder.\033[0m"
  #echo "1. Create a folder"
  echo -e "\033[33m2. Copy a folder.\033[0m"
  #echo "2. Copy a folder"
  echo -e "\033[33m3. Set a password.\033[0m"
  #echo "3. Set a password"
  echo -e "\033[33m4. Calculator.\033[0m"
  #echo "4. Calculator"
   echo -e "\033[33m5. Create week number folders.\033[0m"
  #echo "5. Create week number folders"
   echo -e "\033[33m6. Check file names.\033[0m"
  #echo "6. Check file names"
 echo -e "\033[33m7. download a file.\033[0m"
  #echo "7. Download a file"
  echo "8. Exit"
  read option
  case $option in
    1) create_folder;;
    2) copy_folder;;
    3) set_password;;
    4) calculator;;
    5) create_week_folders;;
    6) check_filenames;;
    7) download_file;;
    8) exit;;
    *) echo "Invalid option, try again!";;
  esac

done
  echo "Access denied. Exiting..."
    exit 1
fi

