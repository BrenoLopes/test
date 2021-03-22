pipeline {
  agent any

  stages {
    stage('Git checkout'){
      steps{
        echo 'Checking out'
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
