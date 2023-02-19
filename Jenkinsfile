#!groovy
pipeline {
    agent any
    tools {
        jdk 'jdk17'
        maven 'maven3'
    }
  stages {
  	stage('Maven Install') {
    	agent {
      	any {
        	image 'maven:3.9.0'
        }
      }
      steps {
      	sh "mvn clean install"
		}
      }
    }
  }
}