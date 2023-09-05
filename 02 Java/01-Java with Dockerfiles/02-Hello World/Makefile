IMAGE_ID=amazoncorretto:17.0.6-al2

build:
	docker run --rm -v "${PWD}":/hello -w /hello $(IMAGE_ID) javac Hello.java

run:
	docker run --rm -v "${PWD}":/hello -w /hello $(IMAGE_ID) java Hello
