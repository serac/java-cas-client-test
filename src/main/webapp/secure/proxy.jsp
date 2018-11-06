<%
java.util.Properties props = new java.util.Properties();
props.load(new java.io.FileInputStream("/data/java-cas-client.properties"));
final String service = props.getProperty("serverName") + "/proxied/";
org.jasig.cas.client.validation.Assertion assertion = (org.jasig.cas.client.validation.Assertion) session.getAttribute("_const_cas_assertion_");
final String proxyTicket = assertion.getPrincipal().getProxyTicketFor(service);
final String redirectUrl = service + "?ticket=" + proxyTicket;
response.sendRedirect(redirectUrl);
%>

