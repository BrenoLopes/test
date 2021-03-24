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
        sh 'echo $pwd'
        sh 'cd ./src/frontend/ && npm run test'
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
