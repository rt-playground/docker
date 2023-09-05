FROM gradle:8.0-jdk17

# Option 1, default working directory.
WORKDIR /home/gradle

# Option 2: Suppose you want to you a different directory other than gradle
#home,
# WORKDIR /app
# you'll need to give grade access to that directory.
# RUN chown -R gradle:gradle /app

# This is required for this image.
USER gradle

COPY build.gradle .
COPY src src

RUN gradle build

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "build/libs/api.jar"]