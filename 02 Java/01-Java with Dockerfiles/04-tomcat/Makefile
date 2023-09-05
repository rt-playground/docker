##################################################
# Copy the web.jar file from the exercises folder.
##################################################

IMAGE_TAG=my-web-app

build:
	docker build -f web.Dockerfile -t $(IMAGE_TAG) .

start:
	# Run the container in the foreground mode.
	docker run --rm -p 9001:8080 -it $(IMAGE_TAG)

run:
	open http://localhost:9001