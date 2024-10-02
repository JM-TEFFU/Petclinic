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
        stage('Build') {
            steps {
                echo 'Building....'
                sh 'mvn package'  
            }
        }

         stage('Test') {
            steps {
                echo 'Testing....'
                sh 'mvn test'  
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
