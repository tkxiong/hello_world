pipeline {
    agent any
    stages {
        stage('build docker') {
            steps {
                sh 'docker build . -t ubuntu-build:22.04'
            }
        }
        stage('build code') {
            agent {
                docker {
                    image 'ubuntu-build:22.04'
                }
            }
            steps {
                sh '''#!/bin/bash
                    mkdir build && cd build
                    cmake .. && make
                '''
            }
        }
    }
}