sudo apt update #Updates package lists (refreshes software catalog)
sudo apt upgrade #Upgrades all installed packages to latest versions 
sudo apt install parted # Installs the parted package - a powerful disk partitioning tool
sudo parted -l && lsblk -f && echo -e "\n---\n" #Comprehensive disk analysis - runs 3 commands in sequence
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS" #This is a one-liner shell command that detects your firmware type (UEFI vs Legacy BIOS).
 echo "esto es un archivo" > archivo.txt #Creates (or overwrites) a file called archivo.txt containing the text "esto es un archivo"