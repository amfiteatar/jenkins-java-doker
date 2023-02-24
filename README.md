# jenkins-java-doker


If you have spaces in folder path, here is command which work under windows 10 Power Shell:

cd "path which have spaces"

docker run -p 8080:8080 -p 50000:50000 -p 2375:2375 -v ${pwd}/jenkins_home:/var/jenkins_home -v //var/run/docker.sock:/var/run/docker.sock --env DOCKER_HOME="0.0.0.0:2375"  custom-jenkins-docker

I dont check if something here was not needed... 
