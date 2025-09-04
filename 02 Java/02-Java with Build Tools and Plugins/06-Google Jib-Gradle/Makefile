##################################################
# Purpose:
# Created: Wednesday, August 30, 2023 at 10:12:06 PM
##################################################

IMAGE_TAG=jib-web-gradle
CONTAINER_NAME=i-jib-web-gradle

login:
	docker login


build:
	#	Unlike maven, this task automatically compiles the project to build the image.
	gradle jibDockerBuild
.PHONY: build


start:
	docker run \
		--name $(CONTAINER_NAME) \
		-d \
		-it \
		--rm \
		-p 9041:8080 \
		$(IMAGE_TAG)

stop:
	docker stop $(CONTAINER_NAME)

browse:
	open http://localhost:9041/


clean:
	gradle clean
	rm -rf build
