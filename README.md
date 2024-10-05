# Spring Petclinic: A Classic Application for Learning Spring Framework

This project provides a Spring Framework application designed for developers to explore and learn core Spring concepts. It adheres to a traditional 3-layer architecture (presentation, service, repository) and utilizes plain old Spring Framework configuration.

# Key Features:

1. **Enhanced Security:** Integrates OWASP Dependency Check to proactively identify and mitigate vulnerabilities in external libraries.
2. **Improved Code Quality:** Utilizes SonarQube for static code analysis, ensuring adherence to coding standards and reducing technical debt.
3. **Streamlined Deployment:** Leverages Tomcat, a robust and scalable application server, for efficient deployment.
4. **Multiple Persistence Layers:** Offers flexibility with JPA (default), JDBC, and Spring Data JPA implementations.

# Getting Started:

- Basic understanding of Java 8+
- Maven 3.3+
- Git
- A web container (Jetty or Tomcat)
- Your preferred IDE (Eclipse, Spring Tools Suite, IntelliJ IDEA)

# Running Locally:

1. Clone the repository:

``` shell
git clone https://github.com/spring-petclinic/spring-framework-petclinic.git

```
2. Navigate to the project directory:
 
```shell

cd spring-framework-petclinic

```

3. Build and run the application (using Maven):

``` shell
./mvnw jetty:run-war
```

# Using Docker:
``` shell
   
docker run -p 8080:8080 springcommunity/spring-framework-petclinic

```
4. Access Petclinic in your browser:
  
```shell
      
http://localhost:8080/
        
```
# Exploring the Codebase:

- The project utilizes various technologies within the Spring ecosystem:

- Presentation Layer: JSPs (legacy setup) with custom tags for UI elements.
- Service and Repository Layers: Java classes implementing business logic and data access using chosen persistence layer.
- Configuration: Spring XML configuration files for beans and application context.
- 
# Learning Resources:

## Understanding Spring Petclinic Diagrams:

[Presentation Here](http://fr.slideshare.net/AntoineRey/spring-framework-petclinic-sample-application) (2017 update)

# Contributing:

This project welcomes contributions! Bug reports, feature requests, and pull requests can be submitted through the issue tracker.

# Additional Notes:

- The official Spring Petclinic has moved to Spring Boot and Thymeleaf for a more modern approach. This fork maintains the traditional configuration style.
- Multiple database options are supported (in-memory H2 by default, MySQL, PostgreSQL) with configuration profiles in the pom.xml file.
- The project leverages Docker for containerized deployments.
- 
# For further exploration, consider these resources:

- Spring Petclinic forks with other technology stacks: https://spring-petclinic.github.io/docs/forks.html
- Interaction with other open-source projects: This project has identified and contributed to improvements in various Spring-related projects.
  
This Spring Petclinic application serves as a valuable tool for developers seeking to gain practical experience with core Spring Framework concepts.
