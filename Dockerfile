FROM maven:3.8.4-openjdk-17 as maven-builder
COPY src /app/src
COPY pom.xml /app

RUN mvn -f /app/pom.xml clean package -DskipTests
FROM openjdk:17-alpine

COPY --from=maven-builder app/target/dockube-spring-boot.jar /app-service/dockube-spring-boot.jar
WORKDIR /app-service

EXPOSE 8080
ENTRYPOINT ["java","-jar","dockube-spring-boot.jar"]
