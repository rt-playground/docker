##################################################
# Purpose:
# Created: Wednesday, August 30, 2023 at 10:12:06 PM
##################################################

IMAGE_TAG=jib-web-gradle

build:
# 	Unlike maven, this task automatically compiles the project to build the image.
	gradle jibDockerBuild

start:
	docker run -it --rm -p 9041:8080 $(IMAGE_TAG)

run:
	open http://localhost:9041/

