FROM eclipse-temurin:17

RUN mkdir /app
#RUN ["executable", "param1", "param2" ]

WORKDIR /app

COPY api.jar app.jar

EXPOSE 8080
# Above is for documentation only

ENTRYPOINT ["java", "-jar", "app.jar"]
