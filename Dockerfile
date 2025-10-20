FROM eclipse-temurin:25-jdk-jammy
EXPOSE 8080
ADD target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
