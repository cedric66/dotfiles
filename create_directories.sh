#!/bin/bash

# Define the SSH directory and key file paths
ssh_dir="$HOME/.ssh"
private_key="$ssh_dir/id_rsa"
public_key="$ssh_dir/id_rsa.pub"

# Create the SSH directory if it doesn't exist
if [ ! -d "$ssh_dir" ]; then
  mkdir -p "$ssh_dir"
  chmod 700 "$ssh_dir"
fi

# Generate an SSH key pair if it doesn't exist
if [ ! -f "$private_key" ] || [ ! -f "$public_key" ]; then
  ssh-keygen -t rsa -b 2048 -f "$private_key" -N ""
  chmod 600 "$private_key"
  chmod 644 "$public_key"
  echo "SSH key pair has been generated and saved to $ssh_dir"
else
  echo "SSH key pair already exists in $ssh_dir"
fi

# Define an array of directories and files to create
items=(
  "$HOME/.ssh"
  "$HOME/.ssh/authorized_keys"
  "/path/to/another/directory"
  "/path/to/another/file.txt"
)

# Loop through the items array and create directories/files if they don't exist
for item in "${items[@]}"; do
  if [ ! -e "$item" ]; then
    if [ -d "$item" ]; then
      mkdir -p "$item"
      chmod 700 "$item"
      echo "Created directory: $item"
    elif [ -f "$item" ]; then
      touch "$item"
      chmod 600 "$item"
      echo "Created file: $item"
    else
      echo "Invalid item: $item"
    fi
  else
    echo "Item already exists: $item"
  fi
done
