pipeline {
    agent any
    stages {
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Run Tests') {
            steps {
                sh 'npm test || echo "Tests not specified yet"'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp:jenkins .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 3000:3000 myapp:jenkins'
            }
        }
    }
}

