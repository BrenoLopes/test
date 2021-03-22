pipeline {
  agent any

  stages {
    stage('Git checkout'){
      steps{
        sh 'git checkout master'
      }
    }
    stage('Pre-Build') {
      steps {
        echo $PWD
      }
    }
    stage('Build') {
      steps {
        echo 'Building'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing..'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
  }
}
