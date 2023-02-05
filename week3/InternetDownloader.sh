#!/bin/bash

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
