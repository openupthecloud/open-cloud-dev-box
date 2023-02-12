#!/bin/sh
set -e
set -u

run_with_sudo() {
    if [ $(id -u) -eq 0 ]; then
        "$@"
    else
        sudo "$@"
    fi
}

if dpkg -s postgresql &> /dev/null; then
    echo "PostgreSQL is already installed."
    exit 0
fi

run_with_sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | run_with_sudo apt-key add -
run_with_sudo apt-get update
run_with_sudo apt-get -y install postgresql