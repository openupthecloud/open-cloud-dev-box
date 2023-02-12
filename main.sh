#!/bin/bash

source ./update.sh
source ./setup-env-variables.sh
source ./install-aws-cli.sh

# ./collect-credentials.sh
# ./open-cloud-dashboards.sh

source ./install-kubectl.sh
source ./install-terraform.sh
source ./install-dynamodb-local.sh   