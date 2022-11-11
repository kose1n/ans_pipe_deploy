FROM tomcat:8
LABEL app=app-maven-docker
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
