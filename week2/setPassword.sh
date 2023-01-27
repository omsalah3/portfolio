#1bin/bash
# enter the folder name
echo "Enter the name of the forlder"
read folder

#enter the secret password
read -rsp "Enter the secret password:" password

# make a folder as the user shose
mkdir $folder

#save the password in the secret.txt in the chosen folder
echo $password > $folder/secret.txt
echo "password saved in $folder/secret.txt"
