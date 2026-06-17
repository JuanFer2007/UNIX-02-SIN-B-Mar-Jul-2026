#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then                                     # I check if any of the required arguments are missing to prevent execution errors.
    echo "Error: Missing arguments. Usage: $0 <name> <domain>"          # I print a user-friendly guide showing the exact parameters needed to run this.
    exit 1                                                              # I stop the script and return exit code 1 to explicitly signal a system failure.
fi                                                                      # I close the argument validation block after ensuring both inputs exist.

NAME=$1                                                                 # I capture the first input parameter and save it into a clean variable for the site name.
DOMAIN=$2                                                               # I capture the second input parameter and store it as the target web domain.
OUTPUT_FILE="ping_results.csv"                                         # I define the name of the final destination file where the history will be logged.

if ping -c 1 "$DOMAIN" > /dev/null 2>&1; then                           # I send exactly one packet and hide all standard/error output to test the host status.
    RESULT="success"                                                    # I set the result variable to success because the domain answered the network ping.
else                                                                    # I enter this block if the host is completely offline or the network domain is invalid.
    RESULT="failure"                                                    # I mark the result as a failure to track that the target host could not be reached.
fi                                                                      # I end the network test block after resolving the connectivity state.

DATE_TIME=$(date '+%Y-%m-%d %H:%M:%S')                                  # I query the system date and time to create a precise timestamp for this event.

echo "$NAME,$DOMAIN,$RESULT,$DATE_TIME" >> "$OUTPUT_FILE"               # I append the structured comma-separated data to the file without overwriting old logs.

echo "Process completed. Result saved to $OUTPUT_FILE"                 # I print a final status message so the user knows the execution ended correctly.

bash exercise_solution.sh mi_red_local localhost    # I execute the script passing 'localhost' as the second argument, forcing it to test my local loopback interface.
cat ping_results.csv                                 # I inspect the file to confirm that the script dynamically processed 'localhost' and logged a 'success' entry.
ping -c 1 localhost       # I execute a single ping packet directly in the terminal to verify that the local loopback interface is fully operational.
