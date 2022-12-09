#!/bin/bash

source ./setup-env-variables.sh
./install-aws-cli.sh
./collect-credentials.sh
./open-cloud-dashboards.sh
./install-terraform.sh