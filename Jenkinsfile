#!groovy
pipeline {
    
    agent any
    
    stages {
        stage('Maven install') {
         	agent { docker 'maven:3.5.0' } 
            	steps {
               		sh 'mvn install'
            }
        }
    }

}