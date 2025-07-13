FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/HelloApp-1.0-jar-with-dependencies.jar app.jar
CMD ["java", "-jar", "app.jar"]
