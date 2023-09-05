IMAGE_TAG=my-web-multi-gradle

build:
	docker build -f multi-gradle.Dockerfile -t $(IMAGE_TAG) .


manual-check:
	# See that the created image have the same size as the previous 2 images.
	docker images