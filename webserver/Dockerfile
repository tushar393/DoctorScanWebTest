FROM openjdk:17
LABEL maintainer="tushar.saha@technoexponent.com"
VOLUME /main-app
ADD webserverTest-1.jar webserverTest-1.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar","webserverTest-1.jar"]


# ###creating target/ .jar file automatically but taking a lot time, need some refactor#####
#
#FROM maven:3.8.5-openjdk-17 AS MAVEN_BUILD
#
#COPY ./ ./
#RUN mvn clean package
#FROM openjdk:17
#COPY --from=MAVEN_BUILD /target/webserverTest-1.jar webserverTest-1.jar
#EXPOSE 9090
#CMD ["java", "-jar", "/webserverTest-1.jar"]