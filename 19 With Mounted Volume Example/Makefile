PORT=8090
# CONTAINER_NAME=i-nginx-with-vol
CONTAINER_NAME=i-nginx
CONTAINER_MOUNT_PATH=/usr/share/nginx/html

# This is ideal as the first target.
list-targets:
	@awk '/^[a-zA-Z0-9][^:]*:$$/ { print substr($$0, 1, length($$0)-1) }' $(MAKEFILE_LIST) | grep -v '^list-targets$$'
.PHONY: list-targets start stop ps delete browse


start:
# 	docker run --rm -d
	docker run -d \
		--name $(CONTAINER_NAME) \
		-p $(PORT):80 \
		-v ./mounted-example:$(CONTAINER_MOUNT_PATH) \
		nginx


stop:
	docker stop $(CONTAINER_NAME)


ps:
	docker ps


delete:
	docker stop $(CONTAINER_NAME)


browse:
	open "http://localhost:$(PORT)"