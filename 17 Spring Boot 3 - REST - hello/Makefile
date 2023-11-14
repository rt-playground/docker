build:
	mvn clean package

run:
	java -jar target/spring-boot-hello-0.0.1-SNAPSHOT.jar

docker-build:
	docker build -t spring-docker .

app-start:
	docker run --rm -p 8090:8080 spring-docker

browse:
	open http://localhost:8090/home
