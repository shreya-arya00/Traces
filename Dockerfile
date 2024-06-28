# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the executable jar file from the target directory to the working directory in the container
COPY target/your-application.jar /app/your-application.jar

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the jar file when the container launches
ENTRYPOINT ["java", "-jar", "your-application.jar"]
