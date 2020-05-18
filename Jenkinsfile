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
        bat 'mvn install'
      }
    }

    stage('sonarqube') {
      steps {
        bat 'REM mvn sonar:sonar'
      }
    }

    stage('deploy') {
      steps {
        bat 'xcopy "C:\\Program Files (x86)\\Jenkins\\workspace\\ecommerce_master\\target\\ecommerce.war" "C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps"'
      }
    }

  }
}