
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Project 1

# Check linkedin profile: www.linkedin.com/in/jaqueen-mokhoma-teffu-465149329

# Build and deploy on tomcat

## 🚀 Let’s Put Everything Together! Clone and Deploy the PetClinic Application! 🐾


Hey everyone!


Let us put altogether what we have learned so far! In my previous posts, I showed you how to install Maven and set up Tomcat, as well as how to build applications with Spring Boot. Now, it’s time to apply that knowledge with the PetClinic application!


# 📦 What You Need:

1. Maven: Make sure it’s installed.

2. Tomcat Server: Have it running on your computer.


# 📥 Clone or Fork the Repository:


You can find the PetClinic application on GitHub. Clone or fork it using this link: https://github.com/JM-TEFFU/Petclinic.git


# 🛠️ Steps to Get Started:


Step 1: Clone the Repository: Open your terminal and run:


`$ git clone https://github.com/JM-TEFFU/Petclinic.git`



Step 2: Go to the Project Folder:


`$ cd Petclinic`


Step 3: Delete any previous built files


`$ mvn clean`


Step 4: Build the Project with Maven: Run this command to build it:


`$ mvn clean package`


Step 5: Deploy to Tomcat: Copy the generated .war file from the target folder to the webapps folder in your Tomcat directory.


Step 6:  Start Tomcat: If Tomcat isn’t running, start it up. You can access the app by going to:


http://127.0.0.1:8080/petclinic


🌟 Explore and Enjoy!


Dive into the application, make changes, and see how everything works together. This is a fantastic opportunity to practice what you’ve learned!

Let me know how it goes or if you have any questions. Happy coding! 💻✨


#Maven #Tomcat #PetClinic #SpringBoot #Java #WebDevelopment #LearningJourney
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Porject 2: Build and deploy on tomcat server

# What do we cover

Setup CI/CD with github, jenkins, Maven and tomcat

   1. Setup jenkins
   2. Setup and configure maven and git
   3. Integrate github, maven, tomcat server with jenkins
   4. Create a CI and CD job
   5. Test deployment

![Project drawio](https://github.com/user-attachments/assets/0be448ea-d3d5-4289-b134-7f662bbebc08)


```shell

Step 1: Install and setup Jenkins

Step 2: Install Maven and JDK plugins

Step 3: Create a pipeline job (Check Jenkinsfile i created one for you)

Step 4: I also recommend you to check Jenkins docs to understands pipeline jobs well. 

```

# Pipeline stages



![Screenshot from 2024-10-02 23-33-33](https://github.com/user-attachments/assets/9778f785-f8e0-489b-bdfa-45783490de92)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Project 3: Build, Perform static code analysis, deploy on tomcat server

   1. Setup jenkins
   2. Setup and configure maven and git
   3. Integrate github, maven,sonarqube, tomcat server with jenkins
   4. Create a CI and CD job
   5. Test deployment

![Project3 drawio](https://github.com/user-attachments/assets/4aa4b033-62ca-42ef-9544-a24677d9cfc3)


## Pipeline stages

![Screenshot from 2024-10-03 01-15-08](https://github.com/user-attachments/assets/013fe35f-384c-4539-94cc-8c772a8c2637)

## Sonarqube Analysis

![Screenshot from 2024-10-03 01-09-52](https://github.com/user-attachments/assets/69da8415-db62-4844-80d2-35019f1bd35e)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Project 4: Build, Perform static code analysis,OWASP Dependecy check deploy on tomcat server

 1. Setup jenkins
   2. Setup and configure maven and git
   3. Integrate github, maven,sonarqube,OWASP dependecy check,tomcat server with jenkins
   4. Create a CI and CD job
   5. Test deployment

![Project3 drawio](https://github.com/user-attachments/assets/4aa4b033-62ca-42ef-9544-a24677d9cfc3)


## Pipeline stages

![Screenshot from 2024-10-03 07-38-29](https://github.com/user-attachments/assets/b6e336be-8b42-464e-9b05-a2ba10361861)


## Sonarqube Analysis

![Screenshot from 2024-10-03 01-09-52](https://github.com/user-attachments/assets/69da8415-db62-4844-80d2-35019f1bd35e)

# OWASP Dependecy check Analysis

![Screenshot from 2024-10-03 07-38-48](https://github.com/user-attachments/assets/b82496c4-f0cd-412d-ab3c-9a3ab85c09fd)

# OWASP Dependecy check report

![Screenshot from 2024-10-03 07-43-36](https://github.com/user-attachments/assets/b232f13e-cbf9-49e9-b7e5-9cd340b51a3f)





