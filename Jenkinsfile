#!groovy
pipeline {
	agent none
  stages {
  	stage('Maven Install') {
    	agent {
      	any {
        	image 'maven:3.9.0'
        }
      }
      steps {
        withMaven(maven: 'mvn') {
      	sh "${mvnHome}/bin/mvn clean install"
		}
      }
    }
  }
}