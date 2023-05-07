#!/bin/bash

# Define the source file path
src_file=uum-kbd.mim

# Define the target directory path
target_dir=~/.m17n.d

# Define the target file path
target_file=$target_dir/$src_file

# Current directory
cur_dir=$(pwd -P)

# Where current file is
cur_file=$cur_dir/$src_file

if [ ! -d "$target_dir" ]; then
  # If the target directory does not exist, create it
  mkdir "$target_dir"
  echo "Directory '$target_dir' created successfully!"
else
  # If the traget directory already exists, display a message
  echo "Directory '$target_dir' already exists."
fi

# Check if the target directory exists
if [ ! -e "$target_file" ]; then
  # If the target directory does not exist, create it
  echo "Symlink does not exist, but file does... Removing file."
  rm -f "$target_file"
fi

# Check if the target file exists
if [ ! -h "$target_file" ]; then
  # If the target file does not exist, create the symbolic link
  ln -s "$cur_file" "$target_file"
  echo "Symbolic link '$target_file' created successfully!"
  echo "uum-kbd.mim is now installed!"
else
  # If the target file already exists, display a message
  echo "File '$target_file' already exists."
  echo "uum-kbd.mim is already installed."
fi
