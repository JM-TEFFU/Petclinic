# Step 1: Use the official OpenJDK 8 base image
FROM openjdk:8

# Step 2: Expose port 8082
EXPOSE 8082

# Step 3: Add the petclinic.war file to the container
ADD target/petclinic.war /petclinic.war

# Step 4: Use ENTRYPOINT to run the application with the specified WAR file
ENTRYPOINT ["java", "-jar", "/petclinic.war"]
