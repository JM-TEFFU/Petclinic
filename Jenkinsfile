pipeline {
    agent any

    tools {
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
                echo 'Compiling...'
                sh 'mvn compile'
            }
        }

        stage('Test Cases') {
            steps {
                echo 'Running Tests...'
                sh 'mvn test'
            }
        }

        stage("SonarQube Analysis") {
            environment {
                SCANNER_HOME = tool 'sonar-scanner'
            }
            steps {
                withSonarQubeEnv('sonar-server') {
                    sh ''' $SCANNER_HOME/bin/sonar-scanner \
                        -Dsonar.projectName=Petclinic \
                        -Dsonar.java.binaries=. \
                        -Dsonar.projectKey=Petclinic '''
                }
            }
        }

        stage('Build') {
            steps {
                echo 'Building...'
                sh 'mvn package'
            }
        }

        stage("OWASP Dependency Check") {
            steps {
                echo 'Running OWASP Dependency Check...'
                dependencyCheck additionalArguments: '--scan target/ --format HTML', odcInstallation: 'dp-check'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-creds', toolName: 'docker-server') {
                    sh "docker build -t petclinic -f Dockerfile ."
                    sh "docker tag petclinic jaqueenwork/petclinic:latest"    
                        
                    }            
                }
            }
        }

         stage('Push Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-creds', toolName: 'docker-server') {
                    sh "docker push jaqueenwork/petclinic:latest"   
                        
                    }   
                }
            }
        }

        stage('Deploy To Docker Container') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-creds', toolName: 'docker-server') {
                    sh "docker run -d --name petclinic -p 8070:8070 jaqueenwork/petclinic:latest"   
                        
                    }   
                }
            }
        }
    
       
    }
}
