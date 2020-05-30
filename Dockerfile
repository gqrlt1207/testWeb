FROM tomcat:9.0
# Take the war and copy to webapps of tomcat
RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps2
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps
COPY target/testWeb.war /usr/local/tomcat/webapps/
RUN mv /usr/local/tomcat/webapps/ROOT /usr/local/tomcat/webapps/ROOT.bak

