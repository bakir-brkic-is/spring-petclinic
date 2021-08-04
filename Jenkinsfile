#!groovy
pipeline {
    
    agent none
    
    stages {
        stage('Maven install') {
         	agent { docker 'maven:3.5.0' } 
            	steps {
               		sh 'mvn install'
            }
        }
    }

}