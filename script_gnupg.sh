gpg --armor --export #Exports ALL your public keys in ASCII-armored format.
gpg --import andy_llave_publica.asc #Imports a key from the file
echo "Vamos al Futbol" > doc_no_cifrado.txt #Creates a plain text file with the message "Vamos al Futbol"
cat doc_no_cifrado.txt #Displays the content of the file doc_no_cifrado.txt on screen.
gpg --output doc_cifrado.txt --encrypt --recipient FD999E623F0E6A05942CE911A91C2A6252985C72 doc_no_cifrado.txt # Encrypts doc_no_cifrado.txt for a specific recipient, saving as doc_cifrado.txt.
gpg --decrypt andy_doc_cifrado.txt # Decrypts the encrypted file andy_doc_cifrado.txt and displays content on screen.
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #Creates a digital signature of the file while keeping original text readable.
cat doc_no_cifrado_firmado.txt #Displays the content of your signed file to verify the clearsign worked.