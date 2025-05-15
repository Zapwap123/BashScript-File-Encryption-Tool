# File Encryption Tool

A secure Bash script for encrypting and decrypting files using a password-based method. It uses OpenSSL with AES-256-CBC encryption and secure key derivation to protect sensitive files.

## Features

- Encrypt and decrypt files with a password
- Uses AES-256-CBC encryption

## Usage

### 1. Clone the repository:

```bash
git clone https://github.com/Zapwap123/BashScript-File-Encryption-Tool
cd BashScript-File-Encryption-Tool
```

### 2. Make the script executable:

```bash
chmod +x fileEncryptionTool.sh
```

### 3. Encrypt a file:

```bash
./fileEncryptionTool.sh encrypt <filePath>
```

### 4. Decrypt a file:

```bash
./fileEncryptionTool.sh decrypt <filePath.enc>
```

## Requirements

- OpenSSL
- Bash
- Unix-like system (Linux, macOS)

## License

MIT License
