IMAGE_NAME=node-app-poc

# build:
# 	docker build -t $(IMAGE_NAME):1.0 .

start:
	docker-compose up -d

stop:
	docker-compose down

ps:
	docker ps

ls:
	docker-compose exec web ls -l /data

browse:
	open "http://localhost:8080"

backup: # Run a manual backup
# 	docker-compose run --rm backup
# 	docker-compose run --rm backup backup
	docker-compose exec backup ./backup.sh  # From GitHub

clean:
	rm -rf backups/

console:
	docker-compose exec web sh
	# Manually run below inside the container to simulate data change
	# echo "Hello, backup world!" > /data/message.txt
	# exit