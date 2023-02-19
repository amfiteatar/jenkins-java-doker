#!groovy
pipeline {
    agent any
    tools {
        jdk 'jdk17'
        maven 'maven3'
    }
  stages {
  	stage('Maven Build') {
      steps {
      	sh "mvn clean install"
		}
      }
    }
}
