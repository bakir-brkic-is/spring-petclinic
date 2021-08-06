pipeline {
    agent { 
        docker { 
            image 'maven:3.8.1-openjdk-17' 
            reuseNode true
            args '-v /Users/bakirbrkic/Documents/combined-task/m2:/root/.m2'
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
                sh 'mvn clean install -DskipTests'
            }
        }
        stage('Maven run surefire tests') {
            steps {
                // sh 'mvn test'
                echo 'here would be testing if jacoco worked'
            }
        }
    }
    
    post {
        always {
            archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
        }
        success {
            echo 'Success!'
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