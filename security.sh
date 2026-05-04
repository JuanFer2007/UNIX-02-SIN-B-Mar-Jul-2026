id # Displays the real and effective user (UID) and group (GID) IDs
cat /etc/passwd | head -10 # Reads the user account file (/etc/passwd) and displays only the first 10 lines
 cat /etc/group | head -10 # Reads the groups file and displays the first 10 lines
groups                    # Lists all the groups the current user belongs to
groups $USER              # Shows the groups for the specific username stored in the $USER variable
cat /etc/group | grep users # Filters the groups file to show only lines containing "users"
cat /etc/group              # Displays the entire list of groups defined in the system
cat /etc/gshadow            # Displays the secure group file (contains encrypted group passwords)
mkdir ~/proyecto_unix/    # Creates a new directory named "proyecto_unix" in the home folder
ls -la ~/proyecto_unix/   # Lists all files in the directory, including hidden ones, in long format
