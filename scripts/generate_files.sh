#!/bin/bash

# Directory to store the files
output_dir="../output_files/"

# Create the directory if it doesn't exist
mkdir -p "$output_dir"

# Loop to create 10,000 files
for i in $(seq 1 10000); do
  echo "Hello, World!" > "$output_dir/file_$i.txt"
done

echo "Generated 10,000 files in $output_dir"
