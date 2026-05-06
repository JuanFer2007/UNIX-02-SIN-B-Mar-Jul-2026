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