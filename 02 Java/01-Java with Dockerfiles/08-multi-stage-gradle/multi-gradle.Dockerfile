###############################################################################
# This was written such that it was modified from the existing example and
#	combined into a multi stage build.
#
# Created: August 29, 2023 11:42 AM
###############################################################################

# Stage I.
FROM gradle:8.0-jdk17 as build

WORKDIR /app

RUN chown -R gradle:gradle /app

USER gradle

COPY build.gradle .
COPY src src

RUN gradle build

# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "build/libs/api.jar"]
# Remove above 2 instructions

# Stage II.
FROM tomcat:10

COPY --from=build /app/build/libs/web.war ${CATALINA_HOME}/webapps/ROOT.war
# We added --from=build, and change the web.war into /app/build/libs/web.war.

EXPOSE 8080

ENTRYPOINT ["catalina.sh", "run"]
