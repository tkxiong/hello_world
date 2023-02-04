pipeline {
    agent any
    stages {
        stage('build docker') {
            steps {
                sh 'docker build . -t ubuntu-build:22.04'
            }
        }
    }
}