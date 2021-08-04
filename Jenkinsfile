#!groovy
pipeline {
    agent none
    stages {     
        stage('Maven Install') {
            agent {
                // docker {
                //     image 'maven:3.5.0'
                // }
                dockerfile {
                    filename 'Dockerfile.build'
                    label 'my-docker-maven-node'
                }
            }
            steps {
                sh 'mvn clean install'
            }
        }
    }
}