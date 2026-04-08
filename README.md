el sistema que vamos a construir tenemos tres componentes
1# kernel linux -el nucleo del sistema operativo
2# busybox -proporciona las utilidades basicas de unix (ls,pwd,vi,etc)en un solo binario
3#SysLinux -el bootloader que carga todo al arrancar
 apt updasudote # Updates package lists from repositories
sudo apt upgrade # Upgrades ALL installed packages to latest versions
sudo apt install -y git vim make gec libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86 

¿Para qué sirve cada paquete?*
"gcc, "make - compilación del kernel y BusyBox
- "libncurses-dev' - menús interactivos de configuración (menuconfig')
•"flex', "bison', "be' - requeridos por el proceso de build del kernel
"cpio"
- para crear el initramfs
"libelf-dev', "libssl-dev' - dependencias del kernel
"syslinux - el bootloader
dosfstools' - para crear el filesystem FAT
qemu-system-x86 - para probar la imagen sin necesidad de hardware real
hardware real 
Clona el repositorio del kernel (solo el último commit para 
ahorrar tiempo y espacio):
git clone --depth 1 https://github.com/torvalds/linux.git #Clone ONLY the most recent commit from the Linux repository of the creator of Linux (Linus Torvalds):
cd linux
make menuconfig # Configure kernel
make - j 2 # Compile (uses all CPU cores) 
sudo apt update #Updates the local package index to discover available updates for your system.
sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86 # Installs the necessary toolchain and dependencies for compiling the Linux Kernel.
git clone --depth 1 https://github.com/torvalds/linux.git #Clones the Linux Kernel source code with a history depth of 1 to save disk space.
cd linux #Changes the current working directory to the Linux Kernel source folder.
make menuconfig #Launches a text-based interface to customize and save the Linux Kernel configuration.
make -j 2 # Compiles the Linux Kernel using 2 processor cores to speed up the process.