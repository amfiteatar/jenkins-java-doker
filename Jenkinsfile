#!groovy
pipeline {
	agent any
    tools {
        jdk 'jdk17'
        maven 'maven3'
		dockerTool 'docker3'
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
      	sh "/var/jenkins_home/downloads/docker build ."
		}
      }	
  	stage('Docker Tag') {
      steps {
      	sh "/var/jenkins_home/downloads/docker tag amfiteatar/amfiteatar amfiteatar/amfiteatar:1.1"
		}
      }
    }
}
