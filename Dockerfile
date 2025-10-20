FROM eclipse-temurin:25-jdk-jammy
LABEL maintainer="your_email@example.com"
EXPOSE 8080
ADD target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
