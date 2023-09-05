IMAGE_TAG=my-web-multi-maven-cached

build:
	docker build -f multi-maven-cached.Dockerfile -t $(IMAGE_TAG) .

# After building, modify the version of the h2database to a lower version to
# verify the caching.