start:
	docker-compose --rm up

stop:
	docker-compose down


# Target to use Docker only, not docker-compose
docker-start:
	docker run \
		--rm \
		-d \
		--name dynamodb-local \
		-p 8000:8000 \
		-v $(HOME)/docker/dynamodb-local:/home/dynamodblocal/data \
		-w /home/dynamodblocal \
			amazon/dynamodb-local:latest \
		-jar DynamoDBLocal.jar \
		-sharedDb \
		-dbPath ./data


admin-start:
# This needs to be installed first `$ npm install -g dynamodb-admin`
	DYNAMO_ENDPOINT=http://localhost:8000 dynamodb-admin

admin-view:
	open http://localhost:8001
	# This needs to be installed first `$ npm install -g dynamodb-admin`

docker-stop:
	docker container stop $$(docker ps -q --filter "name=dynamodb" | head -n 1)