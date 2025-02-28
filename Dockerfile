# Use a base image with JDK 17 (or the version your app requires)
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the build file from target folder (for Maven)
COPY target/*.jar app.jar

# Expose the application port (change if needed)
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
