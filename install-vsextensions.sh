#!/bin/bash

# Set options to exit the script immediately if any command returns a non-zero exit status,
# and to continue even if a command fails with a pipe error.
set -e
set -o pipefail

# Define an array of extension names to be installed.
extensions=(
  ms-python.python
  aws-toolkit-vscode.aws-toolkit-vscode
  ms-mssql.mssql
  amazon-dynamodb.aws-dynamodb-toolkit
)

# Iterate over the array of extensions and install each one using the 'code' command.
# Use the '|| true' trick to make the script continue even if an extension fails to install.
for extension in "${extensions[@]}"; do
  code --install-extension "$extension" || true
done
