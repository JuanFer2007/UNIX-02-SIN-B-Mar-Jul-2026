ls -a #command + option
ls --all #It does exactly the same thing, but it's more explicit.
ls #The binary/command
-- #Option prefixes
a-all #The argument
ls -h # List names only (human-readable flag is ignored without -l)
ls -l -a -h # List all files in long format with human-readable sizes (verbose)
ls -l -ah # List all files in long format with human-readable sizes (semi-grouped)
ls -lah #List all files, hidden included, in long format and human sizes (pro)
mkdir -- -rf #Creates a directory literally named "-rf" using the double-dash to stop flag parsing
rm -- -rf #Deletes a file literally named "-rf" safely without interpreting it as a recursive/force flag
rmdir -- -rf  #Removes an empty directory literally named "-rf" by treating it as a positional argument
ls --help # Displays a quick reference guide and summary of all available flags for ls
man ls # Opens the full interface manual for the ls command for in-depth documentation
/ --depth #Create a shallow clone with a history truncated to the specified number of commits. Implies
           --single-branch unless --no-single-branch is given to fetch the histories near the tips of all branches.
           If you want to clone submodules shallowly, also pass --shallow-submodules.
man git-clone #Opens the comprehensive manual page for the Git clone command
chmod #Change file mode bits (used to manage read, write, and execute permissions)
chmod +x script.sh # Grants execution permissions to the specified file or script
chmod u+x script.sh # Grants execution permission specifically to the owner of the script
chmod o-r script.sh # Removes read permission from "others" to prevent unauthorized viewing of the script
chmod u+rw,go-rwx script.sh # Grants read/write to owner and strips all permissions from group and others
umask #Set the file creation mask to ensure new files and directories have restrictive default permissions (e.g., only the owner can write).
touch archivo1 #Creates an empty file named 'archivo1'. If the file already exists, it updates its timestamp.
mkdir directorio1: #Creates a new directory (folder) named 'directorio1' in the current path.
ls -l: #Lists the contents of the current directory in long format, showing details like permissions, owner, size, and modification date.
total 48
-rw-rw-rw-  1 codespace root      34523 Apr 13 12:16 LICENSE
-rw-rw-rw-  1 codespace root         70 Apr 13 12:16 README.md
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:32 archivo1
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:32 directorio1
-rwx------  1 codespace codespace  1937 Apr 27 12:31 script.sh #The output displays a detailed list of files and directories. It shows that archivo1 and directorio1 were recently created with broad read/write permissions, while script.sh is a private executable file restricted to the owner only.

total 52
-rw-rw-rw-  1 codespace root      34523 Apr 13 12:16 LICENSE
-rw-rw-rw-  1 codespace root         70 Apr 13 12:16 README.md
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:32 archivo1
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:35 archivo2
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:32 directorio1
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:35 directorio2
-rwx------  1 codespace codespace  1937 Apr 27 12:31 script.sh #The total block count increased from 48 to 52 due to the creation of 'archivo2' and 'directorio2'. The permissions remain consistent with the previous state, indicating the umask setting is still active for new entries.
# Recursively change the ownership of the current directory to the current user

# Update the local package index to pull the latest information about available software and versions
sudo apt-get update
# Upgrade all currently installed packages to their latest available versions
sudo apt-get upgrade
# Install the Access Control List (ACL) utility to manage fine-grained file permissions
sudo apt-get install acl
# Recursively change the ownership of the current directory and all its contents to the current user
sudo chown -R $(whoami) .
# Recursively change the ownership of the current directory to the logged-in user
sudo chown -R $(whoami) .
# Remove all extended ACL entries and reset to standard permissions recursively
sudo setfacl -bnR .
# Set a highly restrictive mask: only the owner will have full access to new files
umask 077
# Create an empty file that only the owner can read/write due to the umask
touch secreto.txt
# Create a private directory accessible only by the owner
mkdir privado
# Identify the current active user in the terminal
whoami
# Create a file named 'mi_archivo' and write "Hola" into it
echo "Hola" > mi_archivo
# Create a new user named 'luna', generate their home directory, and set ZSH as their default shell.
useradd -m -s /usr/bin/zsh luna
# Create a new user named 'luna' with a home directory and ZSH as the shell
sudo useradd -m -s /usr/bin/zsh luna
# Change the owner of 'mi_archivo' to the user named 'luna'
chown luna mi_archivo
# Transfer the ownership of 'mi_archivo' to the user 'luna'
sudo chown luna mi_archivo
# List details of 'mi_archivo' to verify its permissions and owner
ls -l mi_archivo
# List all the groups the current user 'codespace' belongs to
groups
 1. Change the group ownership of the 'comun' directory to 'grupo_test'
sudo chgrp grupo_test comun

# 2. Attempt to add 'luna' to 'grupo_test' (this will fail without sudo)
usermod -a -G grupo_test luna

# 3. Add user 'luna' to 'grupo_test' with administrative privileges
sudo usermod -aG grupo_test luna

# 4. Attempt to change group ownership (requires sudo if you are not the owner or in the group)
chgrp grupo_test comun

# 5. List the details of the 'comun' directory to verify permissions
ls -l comun

# 6. Change both the owner to 'luna' and the group to 'grupo_test' for 'mi_archivo'
sudo chown luna:grupo_test mi_archivo

# 7. Verify the new owner and group settings for 'mi_archivo'
ls -l mi_archivo

# 8. Create a directory structure including a subdirectory at once
mkdir -p proyecto/sub

# 9. Create empty files in different locations within the new directory structure
touch proyecto/readme proyecto/sub/datos

# 10. Recursively change the owner to 'luna' and group to 'grupo_test' for the entire 'proyecto' folder
sudo chown -R luna:grupo_test proyecto

# 11. Recursively list all files and subdirectories within 'proyecto' to check their metadata
ls -lR proyecto


