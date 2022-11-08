help:
	@echo "make -s build - create a new docker image"
	@echo "make -s run - run with a docker container"
	@echo "-s option hides the Make invocation command."

build:
	docker build -t typescript-tsc:1.0 .

# run:
# 	docker run --rm typescript-tsc:1.0

start:
	docker run --rm -v "$(PWD)/":/usr/app/ typescript-tsc:1.0

shell:
	docker run --rm -it typescript-tsc:1.0 /bin/sh
