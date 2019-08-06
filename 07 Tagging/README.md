# Overview

To run the local docker registry:

```shell
docker run -d -p 5000:5000 --restart always --name registry registry
```

To push to local registry, image needs to be tagged appropriately:

```shell
docker image tag roycetech/tagging:latest \
localhost:5000/roycetech/tagging:latest
```

View the images

`docker image ls`

Push the image

`docker image push localhost:5000/roycetech/tagging:latest`

## Reference

[LinkedIn Learning Section](https://www.linkedin.com/learning/docker-for-java-developers/tag-and-share-docker-images?u=2105028)

[Docker Registry Image](https://hub.docker.com/_/registry)
