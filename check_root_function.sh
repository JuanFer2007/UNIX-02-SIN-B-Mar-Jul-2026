#!/bin/bash
# This line is a shebang that tells the system to execute the script using the Bash shell.

# This block defines a custom function named 'check_if_root'.
check_if_root(){
  # This conditional checks if the Effective User ID (EUID) is exactly equal to 0, which represents the root user. Note: Spaces are required inside the brackets [[ ... ]] to prevent syntax errors.
  if [[ "${EUID}" -eq "0" ]]; then
    # This statement returns a successful status code of 0 if the user is root.
    return 0
  # This statement executes if the previous condition is false.
  else
    # This statement returns an error status code of 1 if the user is not root.
    return 1
  # This keyword marks the end of the if-else conditional block.
  fi
} # This closing brace marks the end of the function definition.

# This statement calls the 'check_if_root' function and evaluates its return status code.
if check_if_root; then
  # This command prints a success message to the screen if the function returns 0.
  echo "User is root!"
# This statement executes if the function returns a non-zero status code.
else
  # This command prints a warning message to the screen if the function returns 1.
  echo "User is not root!"
# This keyword marks the end of the main script conditional block.
fi

adduser trabajo  # 'adduser' is a system command used to create a new user account named 'trabajo' on the Linux system.
su trabajo      # 'su' (Substitute User) is a command used to switch the current terminal session to the 'trabajo' user account.
bash check_root_fuction.sh    # 'bash' is a command used to execute the shell script file 'check_root_fuction.sh' (which failed because of a typo).
bash check_root_function.sh   # 'bash' is used here again to successfully run the corrected shell script file 'check_root_function.sh'.
exit  # 'exit' is a built-in shell command used to close the current user session and return to the previous user.

