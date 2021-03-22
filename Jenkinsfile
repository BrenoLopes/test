pipeline {
  agent any

  stages {
    stage('Git checkout'){
      steps{
        sh 'git checkout master'
      }
    }
    stage('Download Dependencies') {
      steps('Setting javascript dependencies') {
        sh 'cd ./src/frontend/'
        sh 'npm install'
      }
    }
    stage('Test') {
      steps('Test the frontend') {
        sh 'cd ./src/frontend/'
        sh 'npm run test'
      }
      steps('Test the backend') {
        sh 'echo $pwd'
      }
    }
    stage('Build') {
    
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
  }
}
