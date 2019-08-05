# Instructions

To run natively: `mvn clean package exec:java`

To build docker image: `mvn package -Pdocker`.  This will create an image named `hellojava`

To build the docker image, and run as container: `mvn install -Pdocker`.

## References

[docker-maven-plugin](https://github.com/fabric8io/docker-maven-plugin)
[LinkedIn Learning Section](https://www.linkedin.com/learning/docker-for-java-developers/docker-and-maven?u=2105028)
