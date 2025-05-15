### Dockerfile description

1. FROM quay.io/centos/centos:stream9
   
   - FROM- Specifies the base image
   
   - quay.io- third party registry

2. RUN - execute build commands

3. ENV - set the environment variables

4. EXPOSE -  tells docker that the container listens on the specified network ports at runtime. 

5. CMD    - specifies the command that runs when container starts

### Build image

6. docker build -t tomcat .
   
- it will build a  docker image named tomcat using the dockerfile present in the current directory

- -t - specifies name and tag of the image

### List images

7. docker images
   
### Run container

8. docker run -d  -p  8081:8080 tomcat
    
### List containers

9. docker ps
    
### Verify whether tomcat is working using curl

10.  curl http://34.93.82.177:8081

    
![Screenshot from 2025-05-15 10-49-54](https://github.com/user-attachments/assets/f29f952e-60b5-4a86-b550-f6e1d94ec441)

