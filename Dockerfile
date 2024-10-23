# Step 1: Use the official Tomcat base image
FROM tomcat:9.0-jdk8

# Step 2: Expose port 8082
EXPOSE 8080

# Step 3: Remove the default webapps if needed (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 4: Add your WAR file to the webapps directory in Tomcat
ADD target/petclinic.war /usr/local/tomcat/webapps/petclinic.war

# Step 5: Tomcat starts automatically, so no need for ENTRYPOINT
