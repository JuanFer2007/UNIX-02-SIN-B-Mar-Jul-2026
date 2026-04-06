cd #Goes to your HOME directory
cd / #Switch to the root directory (/) - the system's main folder
cd /home/codespace #Change to the specific directory /home/codespace
cd ~ #Change to the user's HOME directory (~ = HOME)
cd $Home #Change to the HOME directory using the $HOME environment variable
mkdir proyecto #Create a new folder called "project" in the current directory
cd proyecto/ #Change to the newly created "project" directory (the / is optional)
las -lai #total 12
         #925544 drwxr-xr-x 2 codespace codespace 4096 Apr  6 12:36 .
         #918515 drwxr-x--- 1 codespace codespace 4096 Apr  6 12:36 ..
stat . #Displays **DETAILED** information about the current file/directory (.)
mkdir -p /tmp/prueba/sub1 /tmp/prueba/sub2 #Creates folders (parent and child) even if they don't exist
stat /tmp/prueba #Displays detailed information from /tmp/test. 
man mkdir #Open the mkdir MANUAL on screen
pwd #Print Working Directory
whoami # Displays the current user's name
ls #List of files/folders in the current directory
ls -l # 
ls -la #
ls -lh #
ls -lt #