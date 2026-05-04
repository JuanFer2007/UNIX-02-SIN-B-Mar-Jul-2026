id # Displays the real and effective user (UID) and group (GID) IDs
cat /etc/passwd | head -10 # Reads the user account file (/etc/passwd) and displays only the first 10 lines
 cat /etc/group | head -10 # Reads the groups file and displays the first 10 lines
groups                    # Lists all the groups the current user belongs to
groups $USER              # Shows the groups for the specific username stored in the $USER variable