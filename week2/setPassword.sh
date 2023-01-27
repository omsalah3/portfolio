#1bin/bash
# enter the folder name
echo "Enter the name of the forlder"
read folder

#enter the secret password
read -rsp "Enter the secret password:" password

#save the password in the secret.txt file in the chosen folder
if [ ! -d "$folder" ]; then
  mkdir $folder
fi

echo $password > $folder/secret.txt
echo "password saved in $folder/secret.txt"
