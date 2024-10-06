pipeline {
    agent any

    tools {
        jdk 'jdk17'
        maven 'maven3'
    }

    environment {
        NEXUS_URL = 'http://127.0.0.1:8081' // Full Nexus URL
        NEXUS_CREDENTIALS_ID = 'nexus-credentials'
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

        stage('Upload to Nexus') {
            steps {
                nexusArtifactUploader(
                    nexusVersion: 'nexus3',
                    protocol: 'http',
                    nexusUrl: "${env.NEXUS_URL}",
                    groupId: 'maven-releases',
                    artifactId: 'petclinic',
                    version: '1.0.0',
                    repository: 'maven-releases',
                    credentialsId: "${env.NEXUS_CREDENTIALS_ID}",
                    artifacts: [
                        [artifactId: 'petclinic', classifier: '', file: 'target/petclinic-1.0.0.jar', type: 'jar']
                    ]
                )
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh 'cp target/petclinic.war /opt/apache-tomcat-9.0.65/webapps'
            }
        }
    }
}
