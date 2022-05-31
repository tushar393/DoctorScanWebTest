FROM openjdk:17
LABEL maintainer="tushar.saha@technoexponent.com"
VOLUME /main-app
ADD target/webserverTest-1.jar webserverTest-1.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar","webserverTest-1.jar"]
