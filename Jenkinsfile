pipeline {
  agent any

  stages {
    stage('Git checkout'){
      steps{
        sh 'git checkout master'
      }
    }
    stage('Test Frontend') {
      steps('Test the frontend') {
        sh 'cd ./src/frontend/ && npm install && npm run test-prod'
      }
    }
    stage('Test Backend') {
      steps('Test the backend') {
        sh 'gradle test'
      }
    }
    stage('Build') {
      steps {
        echo 'Building'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
  }
}
