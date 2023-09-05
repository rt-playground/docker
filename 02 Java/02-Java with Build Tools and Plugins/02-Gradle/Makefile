##################################################
# Purpose:
# Created: Wednesday, August 30, 2023 at 11:07:13 AM
##################################################

build:
	gradle dockerBuildImage

start:
	gradle startContainer

stop:
	gradle stopContainer

run:


manual-check:
	# To verify the images after build.
	docker images | grep gradle-docker
	cat build/docker/Dockerfile
	# To verify the running container once started.
	docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.Command}}"

