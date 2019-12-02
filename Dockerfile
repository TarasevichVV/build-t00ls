FROM tomcat

LABEL maintainer="gardejpavel@gmail.com"

ADD helloworld-16.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
