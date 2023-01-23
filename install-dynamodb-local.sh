
#!/bin/bash


echo "Installing Java"
brew install openjdk

echo "java is installed sucessfully.... :) "
echo " "
echo " "

mkdir ./dynamolocal && cd ./dynamolocal


echo "Downloading the DynamoDB tar file" 
wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz
tar xzf dynamodb_local_latest.tar.gz
rm -f dynamodb_local_latest.tar.gz

echo " "
echo "Dynamodb-local is installed and ready for use.... :) "
      
      