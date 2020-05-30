FROM tomcat:9.0
# Take the war and copy to webapps of tomcat
RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps2
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps
COPY target/*.war /usr/local/tomcat/webapps/
