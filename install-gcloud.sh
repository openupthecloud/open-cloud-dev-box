#!/bin/bash

# Install dependencies
gp sync-await apt-get-lock
sudo apt-get install apt-transport-https ca-certificates gnupg -y
gp sync-done apt-get-lock

# Add the GCP package repository
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Add the GCP public key to the system's list of trusted keys
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Update package list and install the Cloud SDK
gp sync-await apt-get-lock
sudo apt-get update && sudo apt-get install google-cloud-cli -y
gp sync-done apt-get-lock

echo "Google Cloud SDK installed successfully!"
