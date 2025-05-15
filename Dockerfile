FROM quay.io/centos/centos:stream9

RUN  yum install -y java-11-openjdk && \
 
     yum install -y  wget

RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.105/bin/apache-tomcat-9.0.105.tar.gz && \
     mkdir /opt/tomcat && \
    tar -zxf apache-tomcat-9.0.105.tar.gz  -C /opt/tomcat --strip-components=1 


ENV CATALINA_HOME=/opt/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
    
EXPOSE 8080

CMD ["catalina.sh","run"]
