#!groovy
pipeline {
    
    agent any
    
    stages {
        stage('Maven install') {
         	agent {
                dockerfile {
                    filename 'Dockerfile.build'
                    label 'my-defined-label'
                }
            }
            steps {
               	sh 'mvn install'
            }
        }
    }

}