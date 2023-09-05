FROM tomcat:10
LABEL maintainer=rye
WORKDIR /app
COPY libs libs/
COPY resources resources/
COPY classes classes/
ENTRYPOINT exec java $JAVA_OPTS -cp /app/resources:/app/classes:/app/libs/* com.pluralsight.books.BooksApplication
EXPOSE 8080
