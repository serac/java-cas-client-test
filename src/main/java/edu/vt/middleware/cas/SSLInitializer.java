package edu.vt.middleware.cas;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class SSLInitializer implements ServletContextListener {

  public void contextInitialized(final ServletContextEvent servletContextEvent) {
    final HostnameVerifier allHostsValid = new HostnameVerifier() {
      public boolean verify(final String hostname, final SSLSession session) {
        return true;
      }
    };
    HttpsURLConnection.setDefaultHostnameVerifier(allHostsValid);
  }

  public void contextDestroyed(final ServletContextEvent servletContextEvent) {

  }
}
