pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("myapp:latest")
                }
            }
        }

        stage('Run Tests in Docker') {
            steps {
                script {
                    docker.image("myapp:latest").inside {
                        sh 'npm test'
                    }
                }
            }
        }

        // Optional: push image to Docker Hub
        stage('Push Docker Image') {
            steps {
                withDockerRegistry([credentialsId: 'dockerhub-creds', url: '']) {
                    script {
                        docker.image("myapp:latest").push()
                    }
                }
            }
        }
    }
}
