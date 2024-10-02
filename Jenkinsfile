pipeline {
    agent any
    
    tools{
        jdk 'jdk17'
        maven 'maven3'
    {
          
    stages {
        stage('SCM Checkout') {
            steps {
               git branch: 'main', url: 'https://github.com/JM-TEFFU/Petclinic.git'
            }
        }
        stage('Compile') {
            steps {
               sh 'mvn compile'
            }
        }
       
    }
}
