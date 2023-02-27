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
  	stage('Docker build, tag and push') {
      steps {
      	sh "docker build -t  amfiteatar/amfiteatar ."
//    	sh "/var/jenkins_home/downloads/docker build ."
	sh "docker tag amfiteatar/amfiteatar amfiteatar/amfiteatar:1.1"
      	sh "docker images"
        withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
//          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh "echo ${env.dockerHubPassword} | docker login -u ${env.dockerHubUser} --password-stdin"
          sh 'docker push amfiteatar/amfiteatar:latest'	      
	  }
        }// steps
	}// stage Docker Build, tag and push
//  	stage('Docker Tag') {
//      steps {
//      	sh "docker tag amfiteatar/amfiteatar amfiteatar/amfiteatar:1.1"
////    	sh "/var/jenkins_home/downloads/docker tag amfiteatar/amfiteatar amfiteatar/amfiteatar:1.1"
//		}
//      }
    }// stages
}// pipline
