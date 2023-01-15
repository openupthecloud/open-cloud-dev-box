#!/bin/bash

./install-terraform.sh
./install-aws-cli.sh
./install-kubectl.sh
./install-terraform.sh
./install-kubectl.sh
./install-vsextensions.sh

./setup-env-variables.sh
./collect-credentials.sh
./open-cloud-dashboards.sh
