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


