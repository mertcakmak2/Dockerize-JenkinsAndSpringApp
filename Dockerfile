FROM maven:3.8.4-jdk-11-slim AS build
RUN mkdir /project
COPY . /project
WORKDIR /project
RUN mvn clean package -DskipTests

FROM adoptopenjdk/openjdk11:alpine

ARG JAR_FILE=target/*.jar
COPY --from=build ${JAR_FILE} dockerizeappapplication.jar

ENTRYPOINT ["java","-jar","/dockerizeappapplication.jar"]