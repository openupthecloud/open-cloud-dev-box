#!/bin/bash

# update AWS CLI
OLD_DIR="$PWD"
TMP_DIR="$(mktemp -d)"
echo "Updating AWS"
cd "${TMP_DIR}" || exit 1

curl -fSsl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -qq awscliv2.zip
sudo ./aws/install --update
rm awscliv2.zip

cd "${OLD_DIR}" || exit 1
rm -rf "${TMP_DIR}"

# show aws-cli version
aws --version
echo "AWS CLI is installed & configured successfully."
echo "Now, you can start using aws."
