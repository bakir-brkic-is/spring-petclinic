#!groovy
pipeline {
<<<<<<< HEAD
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
=======
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
>>>>>>> 1c36892c348aac24d517448ff56b280bda860719
            }
        }
    }
}