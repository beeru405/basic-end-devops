# Use a base image with Java and Alpine Linux
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/mywebapp.jar /app/

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "mywebapp.jar"]
