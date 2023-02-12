#!/bin/bash

if command -v /usr/local/bin/terraform &>/dev/null; then
    echo "Terraform is already installed"
    exit
fi

# Get the stable version of Terraform
TF_VERSION=$(curl -sL https://releases.hashicorp.com/terraform/index.json | jq -r '.versions[].builds[].version' | egrep -v 'rc|beta|alpha' | tail -1)

echo "Setting-up Terraform"
OLD_DIR="$PWD"
TMP_DIR="$(mktemp -d)"
cd "${TMP_DIR}" || exit 1

curl -LO "https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip"
unzip terraform_${TF_VERSION}_linux_amd64.zip
sudo mv -f terraform /usr/local/bin/
rm terraform_${TF_VERSION}_linux_amd64.zip

cd "${OLD_DIR}" || exit 1
rm -rf "${TMP_DIR}"

# show terraform version
terraform --version
echo "Terraform is installed & configured successfully."
echo "Now, you can start using terraform."
