pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/<your-username>/java-docker-pipeline.git'
            }
        }

        stage('Build JAR') {
            steps {
                sh 'mvn clean compile assembly:single'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t java-docker-app .'
            }
        }

        stage('Deploy Docker Container') {
            steps {
                sh 'docker rm -f java_app || true'
                sh 'docker run -d --name java_app -p 8080:8080 java-docker-app'
            }
        }
    }
}
