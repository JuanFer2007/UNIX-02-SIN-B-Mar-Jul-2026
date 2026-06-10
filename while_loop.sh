#!/bin/bash
SIGNAL_TO_STOP_FILE="stoploop" # Defines a variable to store the name of the file that will act as a trigger to stop the loop.
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do # Loops continuously as long as the specified stop file does not exist (requires spaces inside brackets).
  echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..." # Prints a status message indicating that the trigger file is still missing.
  echo "Checking again in 2 seconds..." # Informs the user that the script is waiting before performing the next check.
  sleep 2                      # Pauses the script execution for 2 seconds to prevent high CPU usage during the loop.
done                           # Marks the end of the while loop block.
echo "File was found! Exiting..." # Prints a final success message once the file is detected and the loop terminates.
