IMAGE_TAG=my-web-multi-maven

build:
	docker build -f multi-maven.Dockerfile -t $(IMAGE_TAG) .

start:
	docker run --rm -p 9020:8080 -it $(IMAGE_TAG)
