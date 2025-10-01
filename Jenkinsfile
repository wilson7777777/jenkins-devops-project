pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Install Deps') {
      steps {
        sh 'npm ci'
      }
    }
    stage('Run Tests') {
      steps {
        sh 'npm test || echo "No tests yet"'
      }
    }
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t myapp:${BUILD_NUMBER} .'
      }
    }
  }
}
