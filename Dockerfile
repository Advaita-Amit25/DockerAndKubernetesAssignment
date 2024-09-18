FROM openjdk:18
EXPOSE 8080
COPY target/SpringApplication-0.0.1-SNAPSHOT.jar /app/SpringApplication-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/app/SpringApplication-0.0.1-SNAPSHOT.jar"]
