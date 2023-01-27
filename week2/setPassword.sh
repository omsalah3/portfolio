#1bin/bash

echo "Enter the name of the forlder"
read folder
read -rsp "Enter the secret password:" password

if [ ! -d "$folder" ]; then
  mkdir $folder
fi

echo $password > $folder/secret.txt
echo "password saved in $folder/secret.txt"
