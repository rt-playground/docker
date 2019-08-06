# Docker-Compose exercise

This example will run two services the web and the db. We first need to build
the images for these services, see instruction below.

## Instructions

Docker image for the couchbase DB

1. cd to `/db`
2. Create the image `docker image build -t roycetech/couchbase:travel` .
3. Run the image and note the container id:

    ```shell
    docker run -it -p 8091:8091 -p 8092:8092 -p 8093:8093 -p 11210:11210 \
    roycetech/couchbase:travel
    ```

4. Verify the service running by visiting `http://http://localhost:8091/`
5. On another terminal tab, cd into the `webapps` folder to create the table and
 populate data by running:

    ```shell
    mvn install -Pcouchbase
    ```

6. Save the changes to the container into an image by running:

    ```shell
    docker container commit <containerid>

    ```

7. Tag the image with:

    ```shell
    docker image tag <imageid> roycetech/couchbase:travel
    ```

8. Stop the container by pressing `ctrl + c` on the terminal.

9. Optionally delete the container with `docker container rm <containerid`.

10. Stop the running containers.

Docker image for the web application.

1. cd to `/webapp`
2. Build image: `mvn clean package install -Pdocker`

Check the application at: `http://localhost:8080/airlines/resources/airline`

## References

[LinkedIn Learning Video](https://www.linkedin.com/learning/docker-for-java-developers/multicontainer-application-with-docker-compose?u=2105028)
