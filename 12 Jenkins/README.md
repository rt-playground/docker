# Running Jenkins

Taken from https://www.jenkins.io/doc/book/installing/docker/#setup-wizard

## Build Image

docker build -t myjenkins-blueocean:1.1 .

## To Run

NOTE: First, you need to follow the instructions from the above link to build.

```bash
docker run --name jenkins-blueocean --rm --detach \
  --network jenkins --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  myjenkins-blueocean:1.1
```
