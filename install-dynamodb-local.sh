
#!/bin/bash

mkdir ./dynamolocal && cd ./dynamolocal

echo "Downloading the DynamoDB tar file" 
wget https://s3.us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz
tar xzf dynamodb_local_latest.tar.gz
rm -f dynamodb_local_latest.tar.gz

echo " "
echo "Dynamodb-local is installed and ready for use.... :) "
      
      