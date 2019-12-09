FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY helloworld-${BUILD_NUMBER}.war /usr/local/tomcat/webapps/helloworld.war
