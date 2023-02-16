#FROM  14.02.2023 
#FROM anapsix/alpine-java
FROM openjdk:17-alpine
LABEL maintainer="amfiteatar@ekonomski.rs"
COPY ./target/amfiteatar-0.0.1-SNAPSHOT.jar /home/amfiteatar-0.0.1-SNAPSHOT.jar 
CMD ["java","-jar","/home/amfiteatar-0.0.1-SNAPSHOT.jar"]
#  amfiteatar-0.0.1-SNAPSHOT.jar
