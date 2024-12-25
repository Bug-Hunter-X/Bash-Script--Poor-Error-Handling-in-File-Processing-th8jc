#!/bin/bash

# This script demonstrates improved error handling for file processing.

file_to_process="my_file.txt"

# Try to process the file. Handle various errors
process_file() {
if [[ ! -f "$file_to_process" ]]; then
  echo "Error: File '$file_to_process' not found."
exit 1
fi

#Use a trap to handle unexpected errors
trap 'echo "Error: An unexpected error occurred."; exit 1' ERR

#Check if the file is readable
if [[ ! -r "$file_to_process" ]]; then
  echo "Error: Permission denied to read '$file_to_process'."
exit 1
fi

#Process the file
while IFS= read -r line; do
  #Perform operations on each line
  echo "Processing line: $line"
done < "$file_to_process"

}

#Call the function to process the file
process_file

#If we reach this point, the script ran without crashing
echo "File processed successfully."