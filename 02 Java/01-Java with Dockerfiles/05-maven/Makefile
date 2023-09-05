##################################################
# Copy the src folder and the pom.xml file from the exercises folder.
##################################################
IMAGE_TAG=my-api-maven

build:
	docker build -f maven.Dockerfile -t $(IMAGE_TAG) .

build-v2:
	# The mount to the /root/.m2 path is because containers are run by default
	# 	with the root user.
	# 	This will use the maven repository on the host machine that already has
	# 		all the dependencies downloaded.
	docker run --rm -it \
		-v "${PWD}":/app \
		-v ${HOME}/.m2:/root/.m2 \
		-w /app \
		maven:3.9-eclipse-temurin-17 \
		mvn clean package

start:
	# Run the container in the foreground mode.
	docker run --rm -p 9010:8080 -it $(IMAGE_TAG)


run:
	open http://localhost:9010/books