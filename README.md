# Java CAS Client Test Web Application

This is a simple JSP servlet that exercises some of the important aspects
of the Jasig Java CAS Client and may also be used to sanity test a Jasig
CAS Server installation.

## Building

mvn clean package

## Deployment

Copy the WAR artifact at target/test-client.war to your servlet container.
Some runtime configuration is required for the application that may be
conveniently provided by the servlet context.  A sample context
configuration file is provided for reference.
