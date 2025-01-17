#!/bin/bash

# Path to the directory with the 10,000 files
source_dir="../workshop_data/"

# Path to the NFS mount point
nfs_mount_point="/nfs_source"

# Ensure the source directory exists
if [ ! -d "$source_dir" ]; then
  echo "Source directory '$source_dir' does not exist."
  exit 1
fi

# Ensure the NFS mount point exists
if [ ! -d "$nfs_mount_point" ]; then
  echo "NFS mount point '$nfs_mount_point' does not exist."
  exit 1
fi

# Copy files to the NFS mount point
echo "Copying files from '$source_dir' to '$nfs_mount_point'..."
cp -r "$source_dir"/* "$nfs_mount_point"

# Check if the files were copied successfully
if [ $? -eq 0 ]; then
  echo "Files successfully copied to NFS mount point."
else
  echo "Error occurred while copying files to NFS mount point."
  exit 1
fi
