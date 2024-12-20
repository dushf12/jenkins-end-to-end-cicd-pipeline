FROM eclipse-temurin:21-jre-jammy


ARG artifact=target/spring-mvc-app.jar


WORKDIR /opt/app


COPY ${artifact} app.jar


EXPOSE 8080


ENTRYPOINT ["java", "-jar", "app.jar"]

