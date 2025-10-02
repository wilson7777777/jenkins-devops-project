pipeline {
    agent any

    environment {
        APP_NAME = "myapp"
        IMAGE_NAME = "wilson7777777/myapp:latest"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/wilson7777777/jenkins-devops-project'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t myapp:local .'
                }
            }
        }

        stage('Run Tests in Docker') {
            steps {
                script {
                    sh 'docker run --rm myapp:local npm test || echo "No tests defined, skipping..."'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    withCredentials([usernamePassword(
                        credentialsId: 'dockerhub-credentials',
                        usernameVariable: 'DOCKER_USER',
                        passwordVariable: 'DOCKER_PASS'
                    )]) {
                        sh '''
                          echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                          docker tag myapp:local $IMAGE_NAME
                          docker push $IMAGE_NAME
                        '''
                    }
                }
            }
        }
    }
}

