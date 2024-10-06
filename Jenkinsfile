pipeline {
    agent any

    tools{
        jdk 'jdk17'
        maven 'maven3'
    }

    environment {
        NEXUS_URL = 'http://127.0.0.1:8081/repository/maven-releases/'
        NEXUS_CREDENTIALS_ID = 'nexus-credentials'
    }

   
    stages {
        stage('SCM Checkout') {
            steps {
                echo 'SCM Checkout'
                git branch: 'main', url: 'https://github.com/JM-TEFFU/Petclinic.git'
            }
        }
        stage('Compile ') {
            steps {
                echo 'Compile..'
                sh 'mvn compile'   
            }
        }

        stage('Test Cases') {
            steps {
                echo 'Testing....'
                sh 'mvn test'  
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

        
        stage('Build') {
            steps {
                echo 'Building....'
                sh 'mvn package'  
            }
        }

         stage("OWASP Dependency Check"){
            steps{
                echo'OWASP Depedency check'
                dependencyCheck additionalArguments: '--scan target/ --format HTML ', odcInstallation: 'dp-check'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
            }
        }

        stage('Upload to Nexus') {
            steps {
                nexusArtifactUploader(
                    nexusVersion: 'nexus3',
                    protocol: 'http',
                    nexusUrl: "${env.NEXUS_URL}",
                    groupId: 'maven-releases',
                    version: '1.0.0',
                    repository: 'maven-releases',
                    credentialsId: "${env.NEXUS_CREDENTIALS_ID}",
                    artifacts: [
                        [artifactId: 'my-app', classifier: '', file: 'target/petclinic.jar', type: 'jar']
                    ]
                )
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
