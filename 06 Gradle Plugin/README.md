# Instructions

To build and run natively: `./gradlew build run`

To build the docker image: `./gradlew dockerBuildImage`

To create a container: `./gradlew createContainer`

To run a container: `./gradlew startContainer`

To view the output of the container (do not auto-remove):

```shell
docker container ls -a
docker container logs <containerid>
```

Manually delete the container after running.

## Requirements

Java 12
Gradle 5.5.1

## References

[LinkedIn Learning Section](https://www.linkedin.com/learning/docker-for-java-developers/docker-and-gradle?u=2105028)
[Plugin Github](https://bmuschko.github.io/gradle-docker-plugin/)
