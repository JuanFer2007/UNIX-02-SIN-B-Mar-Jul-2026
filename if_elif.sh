#!/bin/bash
#!/bin/bash
USER_INPUT="${1}"              # '${1}' captures the first argument passed to the script instead of '${0}' (which is the script name).
if [[ -z "${USER_INPUT}" ]]; then # Checks if the user input string is empty; note the required space after '[[' and before ']]'.
  echo "You must provide an argument!" # Prints an error message to the terminal if no argument was supplied.
  exit 1                       # Terminates the script immediately with an error status code of 1.
fi                             # Marks the end of the first if statement.
if [[ -f "${USER_INPUT}" ]]; then # Checks if the specified input path exists and is a regular file (requires spaces around brackets).
  echo "${USER_INPUT} is a file." # Prints a message confirming that the input is a valid file.
elif [[ -d "${USER_INPUT}" ]]; then # Checks if the specified input path exists and is a directory (requires spaces around brackets).
  echo "${USER_INPUT} is a directory." # Prints a message confirming that the input is a valid directory.
else                           # Executes if the input path neither is a regular file nor a directory.
  echo "${USER_INPUT} is not a file or a directory." # Prints a message indicating the path is missing or is another type of file.
fi                             # Marks the end of the file/directory evaluation conditional block.

