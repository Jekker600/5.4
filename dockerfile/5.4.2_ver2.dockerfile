FROM ubuntu:latest
RUN apt update -y
RUN apt -y install default-jre
RUN apt -y install wget
ENV JENKINS_HOME=/var/lib/jenkins
RUN mkdir $JENKINS_HOME && chmod 777 $JENKINS_HOME
WORKDIR /home/jenkins
RUN wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war -nv
CMD java -jar jenkins.war
EXPOSE 8080/tcp
