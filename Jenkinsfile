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

     
        stage('Build') {
            steps {
                echo 'Building....'
                sh 'mvn package'  
            }
        }

      
       stage("Sonarqube Analysis "){
             environment {
                SCANNER_HOME=tool 'sonar-scanner'
            }
           
            steps{
                withSonarQubeEnv('sonar-server') {
                    sh ''' $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=Petclinic \
                    -Dsonar.java.binaries=. \
                    -Dsonar.projectKey=Petclinic '''
    
                }
            }
        }

       stage("OWASP Dependency Check"){
            steps{
                dependencyCheck additionalArguments: '--scan target/ --format HTML ', odcInstallation: 'dp-check'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
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
