pipeline {
    agent any
    stages {
        stage('build docker') {
            steps {
                docker build . -t ubuntu-build:22.04
            }
        }
    }
}