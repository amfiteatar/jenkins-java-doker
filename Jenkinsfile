#!groovy
pipeline {
	agent any
    tools {
        jdk 'jdk17'
        maven 'maven3'
//		dockerTool 'docker3'
    }
  stages {

  	stage('Maven Build') {
      steps {
      	sh "mvn clean install"
		}
      }
//	agent { dockerfile true }
  	stage('Docker Build and tag') {
      steps {
      	sh "docker build -t  amfiteatar/amfiteatar ."
//    	sh "/var/jenkins_home/downloads/docker build ."
      	sh "docker images"
		}
      }	
//  	stage('Docker Tag') {
//      steps {
//      	sh "docker tag amfiteatar/amfiteatar amfiteatar/amfiteatar:1.1"
////    	sh "/var/jenkins_home/downloads/docker tag amfiteatar/amfiteatar amfiteatar/amfiteatar:1.1"
//		}
//      }
    }
}
