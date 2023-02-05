#!/bin/bash

# Loop through each line of the file "filenames.txt"
while read line; do
  # Trim leading/trailing whitespaces from the line
  filenames="$(echo "$line" | xargs)"
  # Check if the trimmed line is a valid file
  if [ -f "$filenames" ]; then
    echo "That file exists"
  # Check if the trimmed line is a directory
  elif [ -d "$filenames" ]; then
    echo "That's a directory"
  # If not a file or directory, print "I don't know what that is!"
  else
    echo "I don't know what that is!"
  fi
done < filenames.txt
