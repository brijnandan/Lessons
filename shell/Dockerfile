FROM tomcat:8.0
LABEL description="this is the sample docker file written by brij"
MAINTAINER Brijnandan Chauhan <bchauhan@xvz.com>
COPY  in28minutes-core-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps
COPY  in28minutes.war /usr/local/tomcat/webapps
COPY  in28minutes-web-common-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps
Expose 9000:8080
USER root
