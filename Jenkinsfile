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
        cd ../src/frontend/
        npm install
      }
    }
    stage('Build') {
      steps {
        echo $PWD
        echo 'Building..'
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