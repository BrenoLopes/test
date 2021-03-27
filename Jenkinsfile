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
        sh 'cd ./src/frontend/ && npm install && npx react-scripts test --watchAll=false'
      }
    }
    stage('Test Backend') {
      steps('Test the backend') {
        sh './gradlew clean test'
      }
    }
    stage('Build') {
      steps {
	echo 'Building react app'
	sh 'cd ./src/frontend && npm ci && npm run build'
	echo 'Copying files into the backend'
	sh 'if [ ! -d "./src/main/resources/public" ]; then mkdir ./src/main/resources/public; fi'
	sh 'cd ./src/frontend/build && cp -r ./* ../../main/resources/public/'
	sh 'ls -lha ./src/main/resources/public'
	echo 'Building jar file'
	sh './gradlew clean build'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
	sh "id -nu && id -nG"
	sh 'if [ ! -d "/tmp/jenkins_output" ]; then mkdir /tmp/jenkins_output; fi'
	sh 'if [ ! -d "/tmp/jenkins_output/bin2dec" ]; then mkdir /tmp/jenkins_output/bin2dec; fi'
	sh 'mv build/libs/*.jar /tmp/jenkins_output/bin2dec'
      }
    }
  }
}
