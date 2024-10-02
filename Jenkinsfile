pipeline {
    agent any

    tools{
        jdk 'jdk17'
        maven 'maven3'
    }

    stages {
        stage('SCM Checkout') {
            steps {
                echo 'SCM Checkout'
                git branch: 'main', url: 'https://github.com/JM-TEFFU/Petclinic.git'
            }
        }
        stage('Compile') {
            steps {
                echo 'Compile..'
                sh 'mvn compile'   
            }
        }

        stage('Test') {
            steps {
                echo 'Testing....'
                sh 'mvn test'  
            }
        } 

    stage('Static Code Analysis') {
      environment {
        SONAR_URL = "http://127.0.0.1:9000"
      }
      steps {
        withCredentials([string(credentialsId: 'sonarqube-token', variable: 'SONAR_AUTH_TOKEN')]) {
          sh 'mvn sonar:sonar -Dsonar.login=$SONAR_AUTH_TOKEN -Dsonar.host.url=${SONAR_URL}'
        }
      }
    }

        
        stage('Build') {
            steps {
                echo 'Building....'
                sh 'mvn package'  
            }
        }

         

        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'cp target/petclinic.war /opt/apache-tomcat-9.0.65/webapps'  
            }

        }

          
    }
}
