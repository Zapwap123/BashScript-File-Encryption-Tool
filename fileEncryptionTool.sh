#!/bin/bash

# File Encryption Tool
# This script encrypts or decrypts files.
# It prompts the user for a password to use for encryption/decryption.
# The script uses AES-256-CBC encryption algorithm.
# The encrypted file will have a ".enc" extension.


# Usage:
#   ./fileEncryptionTool.sh encrypt filename
#   ./fileEncryptionTool.sh decrypt filename.enc

# Set encryption parameters
encryptionAlgorithm="aes-256-cbc"

# Check for required arguments 
if [ "$#" -lt 2 ]; then
  echo "Usage:"
  echo "  $0 encrypt <filePath>"
  echo "  $0 decrypt <encryptedFilePath>"
  exit 1
fi

operation="$1"
filePath="$2"

# Prompt for a password if not provided to encrypt the file
encryptFile() {
  echo "Enter password to encrypt:"
  read -s password
  openssl enc -"$encryptionAlgorithm" -salt -in "$filePath" -out "${filePath}.enc" -pass pass:"$password"
  echo "File encrypted as: ${filePath}.enc"
}

# Prompt for a password if not provided to decrypt the file
decryptFile() {
  echo "Enter password to decrypt:"
  read -s password
  outputFile="${filePath%.enc}"
  openssl enc -d -"$encryptionAlgorithm" -in "$filePath" -out "$outputFile" -pass pass:"$password"
  echo "File decrypted as: $outputFile"
}

# Choose operation based on the first argument
# Encrypt or decrypt the file
case "$operation" in
  encrypt)
    encryptFile
    ;;
  decrypt)
    decryptFile
    ;;
  *)
    echo "Invalid operation. Use 'encrypt' or 'decrypt'."
    exit 1
    ;;
esac
