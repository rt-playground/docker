PORT=8091
CONTAINER_NAME=poc-couchdb

build:
	docker image build -t roycetech/couchbase:travel .

start: # NOTE: Run in a secondary terminal (pane) because it will hug the shell for itself.
	docker run \
		--name $(CONTAINER_NAME) \
		-it \
		-p $(PORT):8091 \
		-p 8092:8092 \
		-p 8093:8093 \
		-p 11210:11210 \
		roycetech/couchbase:travel

stop:
	docker container stop $(CONTAINER_NAME)

browse:
	open "http://localhost:$(PORT)/"

ps:
	docker ps