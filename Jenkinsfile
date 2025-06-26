pipeline {
  agent any
  stages {
    stage('Build Docker') {
      steps {
        sh 'docker build -t gardening-backend ./backend'
        sh 'docker build -t gardening-frontend ./frontend'
      }
    }
    stage('Deploy to K8s') {
      steps {
        sh 'kubectl apply -f k8s/'
      }
    }
  }
}

