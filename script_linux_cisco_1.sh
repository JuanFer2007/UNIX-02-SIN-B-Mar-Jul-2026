ls #List the contents of the current directory
ls Documents #List the contents of a specific directory (documents)
sudo apt update && sudo apt install aptitude -y # Install the aptitude package manager automatically (-y)
aptitude moo # Execute the aptitude moo command to find hidden Easter Eggs
ls -l # List directory contents using the long listing format,This shows permissions, owner, size, and modification date
ls -r # List directory contents in reverse alphabetical order
ls -l -r # List directory contents in long format and in reverse order,This combines two separate flags: -l and -r
ls -rl # List directory contents in long format and reverse order using combined flags,Note: The order of flags doesn't matter (e.g., -rl is the same as -lr)
aptitude -v moo # Increase verbosity (-v) to ask aptitude again for Easter Eggs,This is part of a progressive joke in the aptitude package manager
aptitude -vv moo # Further increase verbosity (-vv) to continue the search for Easter Eggs,The program starts to get annoyed with our persistence
aptitude -vvv moo # Triple verbosity (-vvv). The program is now losing its patience with us.
pwd # Print the current working directory path,This helps you know exactly where you are in the file system
mkdir Documents # Create a new directory named Documents (Note the capital 'D')
cd Documents # Change the current directory to Documents
cd / # Change directory to the root of the file system,The '/' symbol represents the highest level in the Linux hierarchy
mkdir -p School/Art # Create a nested directory structure (School and Art subfolder)
cd School/Art # Navigate into the nested directory
cd .. # Move up one level in the directory hierarchy (to the parent directory)
cd ~ # This is a universal shortcut for the current user's home folder
ls # List contents of the home directory to verify the current location
ls -l /var/log/ # List contents of the system log directory using a long format,This uses an absolute path to view system activity files
ls -lt /var/log # List log files in long format, sorted by modification time (newest first),This is essential for troubleshooting recent system events
ls -l -S /var/log # List logs in long format, sorted by file size (largest first)
ls -lSr /var/log  # List logs in long format, sorted by size in reverse order (smallest first)
ls -r /var/log  # List log file names in reverse alphabetical order
su -      # Standard command to switch to root (Fails in Codespaces due to security restrictions)
sudo -i   # Workaround for Codespaces: Gain a root shell using sudo privileges without a password
apt install sl -y  # Install the Steam Locomotive command (requires root)
sl  # Run a train across the terminal (a joke for typing 'ls' incorrectly)