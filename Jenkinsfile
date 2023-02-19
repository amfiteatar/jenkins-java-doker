#!groovy
pipeline {
	agent none
  stages {
  	stage('Maven Install') {
    	agent {
      	any {
        	image 'maven:3.5.0'
        }
      }
      steps {
        def mvnHome = tool name: 'm39', type: 'maven'
      	sh "${mvnHome}/bin/mvn clean install"
      }
    }
  }
}