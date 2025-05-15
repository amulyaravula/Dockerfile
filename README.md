#Dockerfile description
1) FROM quay.io/centos/centos:stream9
   FROM- Specifies the base image
   quay.io- third party registry

2)RUN - execute build commands

3)ENV - set the environment variables

4)EXPOSE -  tells docker that the container listens on the specified network ports at runtime. 

5)CMD    - specifies the command that runs when conatiner starts
#build image
6) docker build -t tomcat .
it will build a  docker image named tomcat using the dockerfile present in the current directory
-t - specifies name and tag(optional) of the image
#list images
7) docker images
#run container
8) docker run -d -p 8081:8080 tomcat
#list containers
9) docker ps
#verify whether tomcat working or not using curl
10) curl http://34.93.82.177:8081

