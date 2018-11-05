FROM jetty:latest

EXPOSE 8080/tcp
EXPOSE 8443/tcp

ENV JETTY_BASE=/var/lib/jetty \
    JETTY_HOME=/usr/local/jetty

COPY files/java-cas-client-test-@project.version@.war $JETTY_BASE/webapps/ROOT.war
COPY files/jetty-ssl.xml $JETTY_HOME/etc/

RUN java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start=ssl
