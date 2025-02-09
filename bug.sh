#!/bin/bash

# This script attempts to process a file, but it handles errors poorly.

file_to_process="my_file.txt"

# Attempt to process the file.  Note the lack of error checking.
process_file() {
  cat "$file_to_process" | awk '{print $1}'
}

# Call the function and don't check if it failed
process_file

echo "File processed successfully (maybe)..."
