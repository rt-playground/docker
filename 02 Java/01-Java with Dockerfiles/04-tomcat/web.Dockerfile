FROM tomcat:10
COPY web.war ${CATALINA_HOME}/webapps/ROOT.war
EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]
# Above is already defined in the tomcat image, but it is a good idea to be
# explicit on what is executing.
