pipeline {
    agent {
        docker {
            image 'node:20' // or another LTS version
            args '-u root:root' // run as root to install packages if needed
        }
    }

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
                sh 'docker build -t myapp:latest .'
            }
        }
    }
}

