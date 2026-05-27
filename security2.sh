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
