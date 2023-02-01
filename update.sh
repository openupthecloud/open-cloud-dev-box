#!/bin/bash

apt-get update
#apt-get upgrade -y
apt-get install -y curl unzip wget jq build-essential file git git-lfs sudo 

# JAVA Installation
wget https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.deb
apt-get install -y ./jdk-19_linux-x64_bin.deb 
update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-19/bin/java 1
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-19/bin/javac 1
update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk-19/bin/jar 1
### next three lines not necessary
update-alternatives --config java
update-alternatives --config javac
update-alternatives --config jar

java -version
echo "java is installed sucessfully.... :) "
echo " "
echo " "