pipeline {
    agent any
    stages {
        stage('Compile Source Code') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('Test Source Code') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Package Code') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
