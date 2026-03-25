gpg --list-secret-keys --keyid-format=long
gpg --armor --export-secret-keys
gpg --armor --export
 gpg --import andy_llave_publica.asc #Imports a key from the file
gpg --armor --export #Exports ALL your public keys in ASCII-armored format.