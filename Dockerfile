FROM openjdk:11-jre-slim

MAINTAINER tuyenld

ENV DB_URL=jdbc:mysql://mysql:3306/shop?createDatabaseIfNotExist=true

WORKDIR /var/www

COPY *.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-Dspring.datasource.url=jdbc:mysql://mysql:3306/shop?createDatabaseIfNotExist=true", "-jar", "app.jar"]