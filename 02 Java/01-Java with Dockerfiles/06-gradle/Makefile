##################################################
# Copy the build.gradle file and the src folder from the exercises folder.
##################################################
IMAGE_TAG=my-api-gradle

build:
	docker build -f gradle.Dockerfile -t $(IMAGE_TAG) .

build-v2:
	docker run --rm -it \
		-u gradle \
		-v "${PWD}":/app \
		-v ${HOME}/.gradle:/home/gradle/.gradle \
		-w /app \
		gradle:8.0-jdk17 \
		gradle build

start:
	# Run the container in the foreground mode.
	docker run --rm -p 9011:8080 -it $(IMAGE_TAG)
	# This will remove the artifacts when the container is stopped.


volumes:
	docker volume ls


run:
	open http://localhost:9011/books