###############################################
# Copy the api.jar file from the exercises folder.
###############################################

build:
	docker build -f jar.Dockerfile -t my-api .

start:
	# Run the container in the foreground mode.
	docker run --rm -p 9000:8080 -it my-api

run:
	open http://localhost:9000/books