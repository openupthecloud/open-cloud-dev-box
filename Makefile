setup-aws-cli:
	pip install awscli

setup-aws-vault:
	brew install aws-vault

run-dynamodb:
	java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb

run-postgres:
	psql -U postgres

run-gcp-sdk:
	gcloud init

list-tools:
	which aws
	which aws-vault
	which java
	which psql
	which gcloud
