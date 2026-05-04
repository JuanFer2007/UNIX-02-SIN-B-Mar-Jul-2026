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
/usr/games/sl  # Run the Steam Locomotive using its absolute path in Ubuntu/Codespaces
exit # Logout from the root session and return to the normal user
sudo /usr/games/sl # Run the Steam Locomotive with sudo using its absolute path
# Correct navigation to the Documents folder within the Codespace workspace
cd /workspaces/UNIX-02-SIN-B-Mar-Jul-2026/Documents # Navigate to the project's Documents folder
touch hello.sh  # Creates an empty file named hello.sh
ls -l hello.sh  # Now this command will work and show the file details
./hello.sh   # Runs the script (it will be empty for now)
chmod u+x hello.sh  # Grant execution permission only to the owner (user) of the file
ls -l hello.sh  # Verify that the execution permission 'x' was successfully added to the owner
echo -e '#!/bin/bash\necho "----------------"\necho "( Hello World! )"\necho "----------------"\necho " \\ "\necho " \\ "\necho " <(^)"\necho " ( )"' > hello.sh  # Use echo to write the script header (shebang) and ASCII art into hello.sh
./hello.sh  # Run the hello.sh script and display the "Hello World" message with the penguin
ls -l  # List long format to verify permissions, size, and modification date of files
sudo chown root hello.sh  # Change the file owner to the root user
ls -l hello.sh  # Verify that the file owner has been successfully changed to root
./hello.sh  # Attempt to execute the script as a regular user after changing its owner to root
sudo ./hello.sh  # Execute the script with root privileges using sudo
echo -e "1 retriever\n2 badger\n3 bat\n4 wolf\n5 eagle" > animals.txt  # Create the animals.txt file with a list of animals
cat animals.txt  # Display the content of the animals.txt file in the terminal
cat alpha.txt  # Display the full alphabet list to compare with head and tail commands
head alpha.txt  # Display the first 10 lines of the file
tail alpha.txt  # Display the last 10 lines of the file
head -n 5 alpha.txt  # Display exactly the first 5 lines of the file
tail -n 5 alpha.txt  # Display exactly the last 5 lines of the file
cp /etc/passwd .  # Copy the system password file to the current directory
ls  # List contents to verify that 'passwd' was successfully copied
cd ~  # Return to the user's home directory
dd if=/dev/zero of=/tmp/swapex bs=1M count=50  # Create a 50MB file filled with zeros in the /tmp directory
touch people.csv  # Create the missing file for the exercise
mkdir Work  # Create the destination directory
mv people.csv Work # Move the file into the Work folder
ls Work  # List the contents of the Work directory to verify the move
touch numbers.txt letters.txt  # Create the missing files for the multiple move exercise
touch numbers.txt letters.txt alpha.txt     # Ensure all three files exist before moving them
mkdir -p School                             # Create the School directory if it doesn't exist
mv numbers.txt letters.txt alpha.txt School # Move multiple files into the School directory at once
ls  # List contents to confirm that the moved files are no longer in the current directory
touch linux.txt  # Create a temporary file to demonstrate the remove command
rm linux.txt     # Remove the file linux.txt from the current directory
ls linux.txt  # Verify that the file 'linux.txt' was successfully deleted
rm -r Work  # Remove the 'Work' directory and all its contents recursively
ls Work  # Verify that the 'Work' directory and its contents were deleted
cp /etc/passwd .  # Copy the system password file to the current directory again for practice
grep sysadmin passwd  # Search for the string 'sysadmin' inside the passwd file
grep 'root' passwd  # grep '^root' /etc/passwd  # Search for lines that START with the string 'root'
grep '^root' /etc/passwd  # Search for lines that START with the string 'root'
echo -e "A is for Apple\nB is for Bear\nC is for Cat" > alpha-first.txt  # Create alpha-first.txt for redirection practice
catgrep 'r$' alpha-first.txt  # Search for lines that END with the letter 'r'
 alpha-first.txt  # Display the contents of alpha-first.txt
grep 'r$' alpha-first.txt  # Search for lines that END with the letter 'r'
echo "Roses are red" > red.txt  # Create red.txt to practice output redirection
cat red.txt                     # Display the contents of red.txt
grep 'r..f' red.txt  # Search for a 4-letter pattern starting with 'r', ending with 'f', and any two characters in between
grep 'r..d' red.txt  # Search for a 4-character pattern starting with 'r' and ending with 'd'
grep '....' red.txt  # Search for any sequence of exactly four characters
grep 'r..t' /etc/passwd  # Search for a 4-character pattern starting with 'r' and ending with 't' in the system password file
echo -e "Joe Smith\nJane Doe\nJohn Doe\nBob Brown" > profile.txt  # Create profile.txt to practice character classes
cat profile.txt                                                # Display the contents of profile.txt
grep '[0-9]' profile.txt  # grep '[^0-9]' profile.txt  # Search for any character that is NOT a numeric digit
grep '[.]' profile.txt  # Search for a literal dot character (inside brackets, the dot loses its wildcard power)
cat red.txt  # Display the final content of red.txt to verify its structure
grep 're*d' red.txt  # Search for 'r', followed by zero or more 'e' characters, and then 'd'
grep 'r[oe]*d' red.txt  # Search for 'r', followed by any number of 'o' or 'e' characters, ending in 'd'
grep 'z*' red.txt  # Search for zero or more occurrences of 'z' (matches every line in the file)
grep 'e*' red.txt  # Matches zero or more occurrences of 'e' (highlights 'e' but shows all lines)
grep 'ee*' red.txt  # Search for lines containing at least one 'e' character
shutdown now  # Command to power off the system immediately (Fails in Codespaces/Containers)
date # Display the current system date and time