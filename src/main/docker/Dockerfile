FROM jetty:10-jdk11-alpine-amazoncorretto

EXPOSE 8080/tcp
EXPOSE 8443/tcp

ENV JETTY_BASE=/var/lib/jetty \
    JETTY_HOME=/usr/local/jetty

COPY files/java-cas-client-test-@project.version@.war $JETTY_BASE/webapps/ROOT.war
RUN rm -fR $JETTY_BASE/start.d