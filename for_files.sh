#!/bin/bash 
for file in example_file*; do        # Loops through all files starting with 'example_file*'
  if [[ "${file}" == "example_file1" ]]; then # Checks if the file name is 'example_file1'
    echo "Skipping the first file"   # Prints a message about skipping this specific file
    continue                         # Skips the rest of this loop and moves to the next file
  fi                                 # Ends the if-statement conditional block
  echo "${RANDOM}" > "${file}"       # Writes a random number inside the current file
done                                 # Marks the end of the for-loop block
