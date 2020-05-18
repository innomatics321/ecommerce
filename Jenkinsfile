pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/madhurichittabathina/ecommerce.git', branch: 'master')
      }
    }

    stage('compile') {
      steps {
        bat 'mvn clean install'
      }
    }

    stage('sonarqube') {
      steps {
        bat 'REM mvn sonar:sonar'
      }
    }

    stage('deploy') {
      steps {
        bat 'c'
      }
    }

  }
}