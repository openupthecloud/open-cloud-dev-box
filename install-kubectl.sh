#!/bin/bash

if command -v /usr/local/bin/kubectl &>/dev/null; then
    echo "kubectl is already installed"
    exit
fi

# Setup kubectl

echo "Setting-up kubectl"
OLD_DIR="$PWD"
TMP_DIR="$(mktemp -d)"
cd "${TMP_DIR}" || exit 1

# Get the Stable version of k8s
KUBE_REL=$(curl -L -s https://dl.k8s.io/release/stable.txt)

curl -LO "https://dl.k8s.io/release/${KUBE_REL}/bin/linux/amd64/kubectl"
KUBE_SHA=$(curl -sL "https://dl.k8s.io/release/${KUBE_REL}/bin/linux/amd64/kubectl.sha256")

echo "${KUBE_SHA} kubectl" >kubectl.sha256

if sha256sum -c kubectl.sha256; then
    chmod +x kubectl
    sudo mv kubectl /usr/local/bin/kubectl
fi

cd "${OLD_DIR}" || exit 1
rm -rf "${TMP_DIR}"

echo "kubectl is installed & configured successfully."
echo "Now, you can start using kubectl."
