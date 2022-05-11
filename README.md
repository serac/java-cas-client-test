# Java CAS Client Test Web Application

The CAS test application provides a simple Java servlet running on a Dockerized
Jetty that exercises common CAS protocol capabilities and is useful for CAS
server compatibility testing. The Maven build system produces two artifacts:

1. java-cas-client-test.war - Java servlet
2. java-cas-client-test:latest - Docker image built on top of jetty:10-jdk11-alpine-amazoncorretto

## Prerequisites

1. Docker (latest and greatest should suffice)
2. Web server certificate/private key pair in PKCS#12 file

The following commands can be used to generate a self-signed cert in the
required format to get started:

    openssl genrsa -out jetty.key 2048
    openssl req -new -x509 -days 10000 -key jetty.key -subj /CN=localhost -out jetty.crt
    openssl pkcs12 -export -inkey jetty.key -in jetty.crt -out jetty.p12

## Getting Started
The following command builds the artifacts and runs the servlet container in
Docker:

    bin/run-container

The script will prompt you to create configuration files needed at runtime:
1. `config/jetty.p12`
2. `config/java-cas-client.properties`

Use the `java-cas-client.properties.sample` file as a reference to create a
configuration suitable for your environment.
