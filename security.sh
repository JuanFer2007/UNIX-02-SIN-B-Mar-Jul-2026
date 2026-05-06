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
#groupadd [options] group_name
# Create a simple group
sudo groupadd desarrolladores
sudo groupadd -g 2000 operaciones
# Specific GID
# System group (GID < 1000)
sudo groupadd --system servicios_web
# Verify that they were created
grep "desarrolladores\|operaciones\|servicios _web" /etc/group
grep -E "desarrolladores|operaciones|servicios _web" /etc/group
# View main options
groupadd --help
# View the range of GIDs in the system
grep "GID _MINI\|GID_MAX\|SYS_GID" /etc/login.defs
# View the range of GIDs in the system
# In Ubuntu typically:
#SYS_GID_MIN = 100
#SYS_GID_MAX = 999
#GID_MIN = 1000
#GID_MAX = 600000
# addgroup [options] group_name
# Create groups with addgroup
sudo addgroup diseno
sudo addgroup --gid 2100 marketing sudo addgroup --system cache_web
# Verify
grep "diseno\/marketing \|cache_web"/etc/group
#See which groups the current user belongs to
groups
id
# Add user to a group with usermod (low level)
sudo usermod -aG desarrolladores $(whoami)
sudo usermod -aG diseno $(whoami)
#$(whoami) is a subshell command that returns the name of the current user
#CRITICAL: The -a (append) flag is essential.
#Without -a, usermod REPLACES all user groups.
#With -a, it ADDS the user to the group while preserving existing ones.
# Verify changes in /etc/group
grep "desarrolladores\|diseno" /etc/group
# Add user to group with adduser (high level,
Debian)
sudo adduser SUSER marketing
# View current status
id $(whoami)
grep $(whoami) /etc/group
# View current status
id root
grep root /etc/group
# Create a temporary group for the demo
groupadd grupo_temporal
usermod -aG grupo_temporal root
id root #has temporary_group
# Now the ERROR: usermod without -a
usermod -G desarrolladores root
#This removes all child groups except for developers.
id root #He lost all the other groups
# Restore
usermod -aG diseno,marketing,grupo_temporal root
id root #Restored
# Create the folder structure
mkdir -p ~/lab_chgrp/projects ~/lab_chgrp/reports ~/lab_chgrp/scripts
# Create the files inside the folders
touch ~/lab_chgrp/projects/app.py
touch ~/lab_chgrp/projects/config.json
touch ~/lab_chgrp/reports/report.txt
touch ~/lab_chgrp/scripts/deploy.sh
ls $HOME