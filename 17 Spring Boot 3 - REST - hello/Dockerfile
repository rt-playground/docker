FROM openjdk:17

LABEL maintainer ="howtodoinjava"

WORKDIR /app

COPY target/spring-boot-hello-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8090

ENTRYPOINT ["java","-jar","app.jar"]