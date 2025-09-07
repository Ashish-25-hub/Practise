FROM tomcat:latest

# Copy default Tomcat webapps back
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

# Copy your WAR file built by Maven
COPY target/register-app-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/register-app.war
