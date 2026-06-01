#!/bin/bash

bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
ps -e -f
ps -ef
df --human-readable
#!/bin/bash -r # Shebang with restricted mode (-r): executes the script using Bash in a secure environment that locks down dangerous actions like changing directories or modifying system variables.
#!/bin/bash -x # Shebang with debug mode (-x): executes the script using Bash while printing every command and its arguments to the screen as they run.
