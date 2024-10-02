pipeline {
    agent any
    
    stages {
        stage('SCM Checkout') {
            steps {
            git branch: 'main', url: 'https://github.com/JM-TEFFU/Petclinic.git'            }
        }
    }

     stages {
        stage('Compile') {
            steps {
            sh 'mvn compile'           }
        }
    }

    
}
