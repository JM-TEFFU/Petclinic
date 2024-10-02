pipeline {
    agent { docker { image 'maven:3.9.9-eclipse-temurin-21-alpine' } }

   tools{
        jdk 'jdk17'
       maven 'maven3'
   }
    
    stages {
        stage('SCM Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/JM-TEFFU/Petclinic.git'
            }
        }

        stage('Compile') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        
    
    }
}
