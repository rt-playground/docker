###############################################################################
# This was written such that it was modified from the existing example and
#	combined into a multi stage build.
#
# Created: August 29, 2023 11:20 AM
###############################################################################

# STAGE I
FROM maven:3.9-eclipse-temurin-17 as build
# Alias build was added from the original.

WORKDIR /app
# The above instruction applies only for this stage.

COPY pom.xml .

RUN mvn dependency:resolve

COPY src src

RUN mvn package

# EXPOSE 8080
# ENTRYPOINT ["java","-jar", "target/api.jar"]
# Remove the above 2 lines for this multi-build.


# STAGE II
FROM tomcat:10

COPY --from=build /app/target/web.war ${CATALINA_HOME}/webapps/ROOT.war
# We added --from=build, and change the web.war into /app/target/web.war.

EXPOSE 8080

ENTRYPOINT ["catalina.sh", "run"]