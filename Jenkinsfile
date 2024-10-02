pipeline {
    agent { docker { image 'maven:3.9.9-eclipse-temurin-21-alpine' } }
    stages {
        stage('SCM Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/JM-TEFFU/Petclinic.git'
            }
        }

        stage('SCM Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/JM-TEFFU/Petclinic.git'
            }
        }
        
      stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
     
    }
}
