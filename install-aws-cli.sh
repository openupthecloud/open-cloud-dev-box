#!/bin/bash

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 
sudo mv ./awscliv2.zip /bin
sudo unzip /bin/awscliv2.zip -d /bin
sudo /bin/aws/install