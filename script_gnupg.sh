gpg --armor --export #Exports ALL your public keys in ASCII-armored format.
gpg --import andy_llave_publica.asc #Imports a key from the file
echo "Vamos al Futbol" > doc_no_cifrado.txt #Creates a plain text file with the message "Vamos al Futbol"
cat doc_no_cifrado.txt #Displays the content of the file doc_no_cifrado.txt on screen.
gpg --output doc_cifrado.txt --encrypt --recipient FD999E623F0E6A05942CE911A91C2A6252985C72 doc_no_cifrado.txt # Encrypts doc_no_cifrado.txt for a specific recipient, saving as doc_cifrado.txt.
gpg --decrypt andy_doc_cifrado.txt # Decrypts the encrypted file andy_doc_cifrado.txt and displays content on screen.
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #Creates a digital signature of the file while keeping original text readable.
cat doc_no_cifrado_firmado.txt #Displays the content of your signed file to verify the clearsign worked.
gpg --verify MICOMPA_doc_no_cifrado_firmado.txt #Verifies the digital signature on the clearsigned file to prove authenticity and integrity.
gpg --edit-key FD999E623F0E6A05942CE911A91C2A6252985C72 #nteractive key management for the specific key with ID FD999E623F0E6A05942CE911A91C2A6252985C72.
gpg --sign-key A91C2A6252985C72 #Signs another person's public key with your private key to certify trust.
gpg --verify andy_doc_no_cifrado_firmado.txt #Verifies Andy's digital signature on the clearsigned file.
gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt #Creates BINARY signed file (original + signature combined, encrypted format).

