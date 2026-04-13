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
