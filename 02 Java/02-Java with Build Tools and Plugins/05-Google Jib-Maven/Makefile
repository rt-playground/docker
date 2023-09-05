##################################################
# Purpose:
# Created: Wednesday, August 30, 2023 at 10:03:19 PM
#
# Learning:
# 	Jib uses temurin as the base image.
##################################################

IMAGE_TAG=jib-web-gradle

build:
	# Package is required for maven version, and not for gradle.
	mvn package com.google.cloud.tools:jib-maven-plugin:dockerBuild -Dimage=$(IMAGE_TAG)

build-v2:
	mvn jib:dockerBuild -f pom-jib.xml

start:
	docker run -it --rm -p 9040:8080 $(IMAGE_TAG)

run:
	open http://localhost:9040

manual-check:
	docker images | grep jib
	# Verify that the jib-web-maven image is created.
	docker history $(IMAGE_TAG)
	# Notice how the application was divided into 3 layers: classes, resources, and dependencies.