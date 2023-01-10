#!/bin/bash

# Install dependencies
sudo apt-get install apt-transport-https ca-certificates gnupg -y

# Add the GCP package repository
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Add the GCP public key to the system's list of trusted keys
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Update package list and install the Cloud SDK
sudo apt-get update && sudo apt-get install google-cloud-cli -y

echo "Google Cloud SDK installed successfully!"

