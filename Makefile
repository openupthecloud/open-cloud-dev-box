# usage: make command
run-dynamodb:
	java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb

run-postgres:
	psql -U postgres

run-gcp-sdk:
	gcloud init
