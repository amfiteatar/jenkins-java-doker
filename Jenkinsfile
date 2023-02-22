#!groovy
pipeline {
	agent any
    tools {
        jdk 'jdk17'
        maven 'maven3'
		docker 'docker'
    }
  stages {

  	stage('Maven Build') {
      steps {
      	sh "mvn clean install"
		}
      }
//	agent { dockerfile true }
  	stage('Docker Build') {
      steps {
      	sh "docker build ."
		}
      }	
  	stage('Docker Tag') {
      steps {
      	sh "docker tag amfiteatar/amfiteatar amfiteatar/amfiteatar:1.1"
		}
      }
    }
}
