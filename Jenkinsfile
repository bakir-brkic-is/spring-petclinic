#!groovy
pipeline {
    dockerNode('maven/maven:3.5.0') {
        stages {     
            stage('Maven Install') {
                // docker {
                //     image 'maven:3.5.0'
                // }
                // dockerfile {
                //     filename 'Dockerfile.build'
                //     label 'my-docker-maven-node'
                // }
                steps {
                    sh 'mvn clean install'
                }
            }
        }
    }
}