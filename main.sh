#!/bin/bash

source ./setup-env-variables.sh
./install-aws-cli.sh
./collect-credentials.sh
./open-cloud-dashboards.sh
source ./install-kubectl.sh
source ./install-terraform.sh
source ./install-dynamodb-local.sh   