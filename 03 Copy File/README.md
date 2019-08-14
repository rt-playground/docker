# Instructions

To build or rebuild: `docker image build -t roycetech/docker-copy-example` .

To run (port must be exposed): `docker container run -p 8080:8080 roycetech/docker-copy-example`

Check with by: `curl http://localhost:8080/webapp/resources/persons` or open via browser

## Recipe

Copy file from container to host:

```shell
docker cp <containerId>:/file/path/within/container ~/Desktop
```
