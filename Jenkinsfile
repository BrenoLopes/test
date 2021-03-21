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
        gradle
      }
      steps {
        sh -c "cd ./src/frontend/ && npm install"
      }
    }
    stage('Build') {
      steps {
        sh -c "echo $PWD && echo 'Building..'"
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