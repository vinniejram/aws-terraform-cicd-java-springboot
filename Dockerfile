FROM adoptopenjdk/maven-openjdk11 as builder
WORKDIR /app
COPY . /app 
RUN mvn clean install 

FROM adoptopenjdk:11-jre-hotspot
WORKDIR /app
ARG JAR_FILE=/app/target/*.jar
COPY --from=builder $JAR_FILE /app/app.jar

EXPOSE 8080
CMD ["java", "-jar", "/app/app.jar"]