# Docker-Compose exercise

This example will run two services the web and the db. We first need to build
the images for these services, see instruction below.

UPDATE: Not working as of Tue, Aug 12, 2025 at 02:42:46 PM

## Instructions

Docker image for the couchbase DB

1. cd to `/db`
2. Create the image `docker image build -t roycetech/couchbase:travel .`
3. Run the image and note the container id:

    ```shell
    docker run -it -p 8091:8091 -p 8092:8092 -p 8093:8093 -p 11210:11210 \
    roycetech/couchbase:travel
    ```

4. Verify the service running by visiting `http://localhost:8091/`
5. On another terminal tab, cd into the `webapp` folder to create the table and
 populate data by running:

    ```shell
    mvn install -Pcouchbase
    ```

    NOTE: Above command fails.

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


## Troubleshooting
* Wed, Aug 06, 2025 at 08:42:28 AM - [INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  31.036 s
[INFO] Finished at: 2025-08-06T08:40:04+08:00
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.codehaus.mojo:exec-maven-plugin:1.4.0:exec (Configure memory) on project couchbase-javaee: Command execution failed.: Process exited with an error: 3 (Exit value: 3) -> [Help 1]
    * 
* Wed, Aug 06, 2025 at 08:38:26 AM - [ERROR] Failed to execute goal org.apache.maven.plugins:maven-war-plugin:3.0.0:war (default-war) on project couchbase-javaee: Execution default-war of goal org.apache.maven.plugins:maven-war-plugin:3.0.0:war failed: Unable to load the mojo 'war' in the plugin 'org.apache.maven.plugins:maven-war-plugin:3.0.0' due to an API incompatibility: org.codehaus.plexus.component.repository.exception.ComponentLookupException: null
    * Update the maven-war-plugin from 3.0.0 to 3.4.0.


## References

[LinkedIn Learning Video](https://www.linkedin.com/learning/docker-for-java-developers/multicontainer-application-with-docker-compose?u=2105028)
