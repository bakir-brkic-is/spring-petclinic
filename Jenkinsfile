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
        stage('Maven install (skip test)') {
            steps {
                sh 'mvn install -DskipTests'
            }
        }
        stage('Maven run surefire tests') {
            steps {
                sh 'mvn test'
            }
        }
    }
    
    post {
        always {
            junit 'build/reports/**/*.xml'
        }
        success {
            archiveArtifacts artifacts: 'build/libs/**/*.jar', fingerprint: true
        }
        failure {
            echo 'This will run only if failed'
        }
        unstable {
            echo 'This will run only if the run was marked as unstable'
        }
        changed {
            echo 'This will run only if the state of the Pipeline has changed'
            echo 'For example, if the Pipeline was previously failing but is now successful'
        }
    }
}