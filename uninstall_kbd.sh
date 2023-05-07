#!/bin/bash

# Define the source file path
src_file=uum-kbd.mim

# Define the target directory path
target_dir=~/.m17n.d

# Define the target file path
target_link=$target_dir/$src_file

# Check if the target directory exists or not
if [ ! -h "$target_link" ]; then
  echo "File '$target_link' does not exist!"
else

  # Check if the target directory exists
  if [ ! -e "$targe_link" ]; then
    # If the target directory does not exist, create it
    echo "Symlink does not exist, but file does... Removing file."
    rm -f "$target_link"
  fi

  # If the file exists, delete and display a message
  rm -f "$target_link"
  echo "File '$target_link' has been deleted!"
  echo "uum-kbd.mim has been uninstalled!"
fi
