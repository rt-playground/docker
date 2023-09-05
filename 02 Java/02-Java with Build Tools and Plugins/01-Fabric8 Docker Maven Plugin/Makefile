build:
	# DOCKER_HOST must be set first for the next command to work.
	# export DOCKER_HOST=tcp://192.168.1.100:2376
	mvn clean package
	# Encountered an issue initially, could not connect to the docker host.
	# Checking the "Allow the default Docker socket to be used (requires
	# password)" Under Advanced section in the Docker Desktop may have fixed the
	# issue.

start:
	mvn docker:run
	# Killing the container will automatically remove it.

view-dockerfile:
	cat target/docker/fabric8-dmp/v2/build/Dockerfile

run:
	mvn docker:run

browse:
	open http://localhost:9050/books
