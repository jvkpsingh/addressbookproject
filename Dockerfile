FROM ubuntu
MAINTAINER ["kundan kumar']
WORKDIR /home/ubuntu
RUN apt-get update
RUN apt-get install -y default-jdk
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.89/bin/apache-tomcat-9.0.89.tar.gz ./
ADD tar zxvf apache-tomcat-9.0.89.tar.gz
RUN cp -r /home/ubuntu/apache-tomcat-9.0.89 /opt
ADD ./target /opt/apache-tomcat-9.0.89/webapps
RUN rm -r /opt/apache-tomcat-9.0.89/conf/tomcat-users.xml
ADD tomcat-users.xml /opt/apache-tomcat-9.0.89/conf
RUN rm -r /opt/apache-tomcat-9.0.89/webapps/manager/META-INF/context.xml
ADD context.xml /opt/apache-tomcat-9.0.89/webapps/manager/META-INF
EXPOSE 8090
CMD ["/opt/apache-tomcat-9.0.89/bin/catlina.sh","run"]

