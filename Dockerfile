
# Use an official Tomcat image as the base image
FROM tomcat:9.0-jdk11-openjdk

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps

# Remove the default Tomcat web applications
RUN rm -rf ROOT docs examples host-manager manager

# Copy your Java web application WAR file into the container
COPY path/to/your/application.war ./ROOT.war

# Expose the port that Tomcat will run on
EXPOSE 8081

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
