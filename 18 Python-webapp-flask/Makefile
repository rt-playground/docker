PORT=8080
IMAGE_REF=python-flask-poc:latest
CONTAINER_NAME=i-simple-flask-app

list-targets:
	@targets=$$(awk '/^[a-zA-Z0-9][^:]*:$$/ {print substr($$0, 1, length($$0)-1)}' $(MAKEFILE_LIST) | grep -v '^list-targets$$'); \
	if [ -z "$$targets" ]; then \
		echo "No other targets found."; \
	else \
		echo "$$targets"; \
	fi
.PHONY: list-targets login logout build start stop ls ps browse clean


login:
	docker login

logout:
	docker logout


build:
	docker build -t $(IMAGE_REF) .


start:
# 	docker run 	--name $(CONTAINER_NAME) --rm -d -p $(PORT):5000 $(IMAGE_REF)
	docker run 	--name $(CONTAINER_NAME) -d -p $(PORT):5000 $(IMAGE_REF)

stop:
	docker stop $(CONTAINER_NAME)


ls:
	docker images | grep poc || true

images: ls

ps:
	docker ps


browse:
	open "http://localhost:$(PORT)"


clean: # Delete the image
	docker rmi $(IMAGE_REF)