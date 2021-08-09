FROM amazoncorretto
RUN yum -y install java-1.8.0-openjdk 
RUN yum -y install wget
RUN yum update -y
ENV JENKINS_HOME=/var/lib/jenkins
RUN mkdir $JENKINS_HOME && chmod 777 $JENKINS_HOME
WORKDIR /home/jenkins
RUN wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war -nv
CMD java -jar jenkins.war
EXPOSE 8080/tcp
