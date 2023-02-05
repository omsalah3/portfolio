#!/bin/bash

./passwordCheck.sh
if [ $? -eq 0 ];then
while :;
do
    echo -e "\e[1;33m"1 create a folder" \e[0m"
    echo -e "\e[1;33m"2 copy a folder" \e[0m"
    echo -e "\e[1;33m"3 set a password" \e[0m"
    echo -e "\e[1;33m"4 calculator" \e[0m"
    echo -e "\e[1;33m"5 create week folders" \e[0m"
    echo -e "\e[1;33m"6 check file names" \e[0m"
    echo -e "\e[1;33m"7 download a file" \e[0m"
    echo "8 exit"

read useroption

case $useroption in

1)
    ./foldermaker.sh
    ;;

2)
    ./foldercopier.sh
    ;;
3)
    ./setPassword.sh
    ;;
4)  
    ./calculator.sh
    ;;
5)    
    ./megafoldermaker.sh
    ;;
6)
    ./filenames.sh
    ;;
7)
    ./InternetDownloader.sh
    ;;
8)  
    break;
    ;;
*)
    #echo "Incorrect selection"
    #exit 1
    ;;
esac
done
fi