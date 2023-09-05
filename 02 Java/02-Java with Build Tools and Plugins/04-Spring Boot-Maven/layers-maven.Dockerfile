FROM gradle:8.0-jdk17 as build

WORKDIR /app

RUN chown -R gradle:gradle /app

USER gradle

COPY build.gradle .
COPY src src

RUN gradle build \
	&& java -Djarmode=layertools -jar build/libs/api.jar extract


FROM eclipse-temurin:17
WORKDIR /app

COPY --from=build /app/dependencies/ ./
COPY --from=build /app/hibernate-deps/ ./
COPY --from=build /app/spring-boot-loader/ ./
COPY --from=build /app/snapshot-dependencies/ ./
COPY --from=build /app/application/ ./

ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]
