pipeline {
  agent any

  stages {
    stage('Git checkout'){
      steps{
        git checkout master
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
