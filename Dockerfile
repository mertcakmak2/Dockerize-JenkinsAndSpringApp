FROM adoptopenjdk/openjdk11:alpine

ARG JAR_FILE=/project/target/*.jar
COPY ${JAR_FILE} dockerizeappapplication.jar

ENTRYPOINT ["java","-jar","/dockerizeappapplication.jar"]