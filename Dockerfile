FROM ubuntu:bionic
MAINTAINER Ricky Chen <809155736@qq.com>

#get package list
RUN apt-get update

#default time zone
#ENV TZ=UTC
	
#java home
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# install java
RUN apt-get install -y openjdk-8-jdk

# show the java info
RUN java -version

WORKDIR /docker-elk/app
ADD ./target/springboot-elk-0.0.1-SNAPSHOT.jar . 

EXPOSE 8080 
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "springboot-elk-0.0.1-SNAPSHOT.jar"]
