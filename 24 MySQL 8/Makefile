CONTAINER_NAME=i-mysql8-dev
DB_NAME=dev_db
DB_USERNAME=dev_user
DB_PASSWORD=dev_password
DB_ROOT_PASSWORD=secret
VOLUME_NAME=vol-mysql_data

list-targets:
	@targets=$$(awk '/^[a-zA-Z0-9][^:]*:$$/ {print substr($$0, 1, length($$0)-1)}' $(MAKEFILE_LIST) | grep -v '^list-targets$$'); \
	if [ -z "$$targets" ]; then \
		echo "No other targets found."; \
	else \
		echo "$$targets"; \
	fi
.PHONY: list-targets, start, stop, ps, clean


start:
	docker run -d \
		--name $(CONTAINER_NAME) \
		-e MYSQL_ROOT_PASSWORD=$(DB_ROOT_PASSWORD) \
		-e MYSQL_DATABASE=$(DB_NAME) \
		-e MYSQL_USER=$(DB_USERNAME) \
		-e MYSQL_PASSWORD=$(DB_PASSWORD) \
		-p 3306:3306 \
		-v $(VOLUME_NAME):/var/lib/mysql \
			mysql:8

stop:
	docker container stop $(CONTAINER_NAME)

ps:
	docker ps

clean: # delete the named volume
	docker container rm $(CONTAINER_NAME)
	docker volume rm $(VOLUME_NAME)