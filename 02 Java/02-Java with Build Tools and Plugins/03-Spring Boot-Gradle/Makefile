##################################################
# Purpose:
# Created: Wednesday, August 30, 2023 at 12:10:09 PM
##################################################

build:
	gradle bootBuildImage --imageName=layers-gradle
.PHONY: build

build-v2:
	gradle clean build

build-v3:
	docker build -f layers-gradle.Dockerfile -t custom-layers-gradle .


run:
	docker run -it --rm -p 9030:8080 layers-gradle
	# Notice the CPU count is automatically calculated.

run-v3:
	docker run -it --rm -p 9031:8080 custom-layers-gradle

browse-v3:
	open http://localhost:9031/books

layers-list:
	java -Djarmode=layertools -jar build/libs/api.jar list

layers-extract:
	java -Djarmode=layertools -jar build/libs/api.jar extract

manual-check:
	docker images
	# You should see the layers-gradle and the paketbuildpabcks/builder images
	# created ~43 years ago.
	ls hibernate-deps/BOOT-INF/lib
	# After layers-extract, you should be able to see the hibernate jar files.