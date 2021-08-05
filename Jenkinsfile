pipeline {
    agent { 
        docker { 
            image 'maven:3.8.1-openjdk-17' 
        } 
    }
    stages {
        stage('List Maven version') {
            steps {
                sh 'mvn --version'
            }
        }
    }
}