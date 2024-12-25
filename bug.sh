#!/bin/bash

# This script attempts to process a file, but it handles errors poorly.

file_to_process="my_file.txt"

# Try to process the file. If it fails, print an error and exit.
process_file() {
if [[ ! -f "$file_to_process" ]]; then
  echo "Error: File not found."
exit 1
fi

# ... (file processing code here) ...
}

# Call the function to process the file
process_file

# If we reach this point, the script ran without crashing
echo "File processed successfully."