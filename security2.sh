addgroup, groupadd, chgrp, newgrp
# View the current primary group
id
#uid=1000(vscode) gid=1000(vscode) groups=1000(vscode)
id -gn
# Primary group name only
# Create a file and see which group it inherits
touch ~/test_grupo_heredado.txt
ls -la ~/test_grupo_heredado.txt
# The group is the user's primary group

addgroup, groupadd, chgrp, newgrp
# View the current group
id -gn
echo "Current group: $(id -gn)"
# Create a file before newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt

addgroup, groupadd, chgrp, newgrp
# Change to the 'desarrolladores' group
newgrp desarrolladores
# Verify that the active group changed
id -gn
echo "New active group: $(id -gn)"

# Create a file inside the subshell
touch ~/dentro_de_newgrp.txt
ls -la ~/dentro_de_newgrp.txt
# The group is now "desarrolladores"
# Create a directory
mkdir -p ~/proyecto_dev/src
ls -la ~/

# 'proyecto_dev/' is now owned by the 'desarrolladores' group
# Exit the newgrp subshell
exit
# Verify that we returned to the original group
id -gn
echo "Grupo restaurado: $(id -gn)"
