help:
	@echo "make -s build - create a new docker image"
	@echo "make -s run - run with a docker container"
	@echo "make -s update - updates the private Makefile (do this after updating this file)"
	@echo "-s option hides the Make invocation command."

update:
	cp Makefile Makefile.pvt

build:
	docker build -t python-app:1.0 .

run:
	docker run python-app:1.0
