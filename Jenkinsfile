#!groovy
pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile.build'
            label 'my-docker-maven-node'
        }
    }
    stages {     
        stage('Maven Install') {
            // agent {
            //     // docker {
            //     //     image 'maven:3.5.0'
            //     // }

            // }
            steps {
                sh 'mvn clean install'
            }
        }
    }
}