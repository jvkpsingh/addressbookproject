FROM ubuntu
MAINTAINER ["kundan kumar']
WORKDIR /home/ubuntu
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.89/bin/apache-tomcat-9.0.89.tar.gz
ADD tar zxvf apache-tomcat-9.0.89.tar.gz
RUN cp -r /home/ubuntu/apache-tomcat-9.0.89 /opt
RUN rm -rf /opt/apache-tomcat-9.0.89/
RUN cp -r  /home/ubuntu/tomcat-users.xml /opt/apache-tomcat-9.0.89/
