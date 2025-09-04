IMAGE_REFERENCE=named_and_bind_poc:latest
VOLUME_NAME=vol-named-poc
CONTAINER_NAME=i-volumes-poc
PORT=8080

list-targets:
	@targets=$$(awk '/^[a-zA-Z0-9][^:]*:$$/ {print substr($$0, 1, length($$0)-1)}' $(MAKEFILE_LIST) | grep -v '^list-targets$$'); \
	if [ -z "$$targets" ]; then \
		echo "No other targets found."; \
	else \
		echo "$$targets"; \
	fi
.PHONY: list-targets


build:
	docker build -t $(IMAGE_REFERENCE) .

start:
	docker run \
		--rm \
		--name $(CONTAINER_NAME) \
		-d \
		-v $(VOLUME_NAME):/data \
		-v ./mounted-example:/bind-mount \
		-p $(PORT):3000 \
		$(IMAGE_REFERENCE)

stop:
	docker container stop $(CONTAINER_NAME)

console:
	docker exec -it $(CONTAINER_NAME) sh
	# Manually run below inside the container to simulate data change
	# echo "Hello, backup world!" > /data/message.txt
	# echo "CORRUPTED" > /data/message.txt
	# exit


health:
	curl http://localhost:$(PORT)

health-bind:
	curl http://localhost:$(PORT)/bind
