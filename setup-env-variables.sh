#!/bin/bash
     
export AWS_DEFAULT_REGION=us-east-1
export AWS_VAULT_BACKEND=file
export AWS_VAULT_FILE_PASSPHRASE=

# Download & Install aws-vault
curl -L -o /usr/local/bin/aws-vault https://github.com/99designs/aws-vault/releases/download/v6.6.2/aws-vault-linux-amd64
chmod 755 /usr/local/bin/aws-vault

# show aws-vault version
aws-vault --version