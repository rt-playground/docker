FROM maven:3.9-eclipse-temurin-17

WORKDIR /app

COPY pom.xml .

RUN mvn dependency:resolve
# Above is so that docker creates a layer with all the dependencies of the
# project that will be rebuild only when the pom changes.

COPY src src

RUN mvn package

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "target/api.jar"]
