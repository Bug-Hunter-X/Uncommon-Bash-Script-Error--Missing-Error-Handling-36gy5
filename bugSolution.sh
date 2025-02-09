#!/bin/bash

# This script demonstrates improved error handling.

file_to_process="my_file.txt"

# Function to process the file with error checking
process_file() {
  if [ ! -f "$file_to_process" ]; then
    echo "Error: File '$file_to_process' not found." >&2
    exit 1
  fi

  cat "$file_to_process" | awk '{print $1}' || {
    echo "Error: awk command failed." >&2
    exit 1
  }
}

# Call the function and check for errors
process_file

if [ $? -eq 0 ]; then
  echo "File processed successfully."
fi
