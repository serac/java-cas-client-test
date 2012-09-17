<%@ page import="java.util.Collection" %>
<%@ page import="org.jasig.cas.client.authentication.AttributePrincipal" %>
<%@ page import="org.jasig.cas.client.util.AssertionHolder" %>
<%@ page import="org.jasig.cas.client.validation.Assertion" %>
<%@ page session="false" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <title>CAS Java Client Test Page</title>
  <link rel="stylesheet" href="../basic.css" type="text/css" />
</head>
<body>
<h1>Authentication Data</h1>
<%
Assertion assertion = AssertionHolder.getAssertion();
AttributePrincipal principal = assertion.getPrincipal();
%>
<p><strong>Authentication method:</strong> <%= assertion.getAttributes().get("samlAuthenticationStatement::authMethod") %></p>
<h1>User Data</h1>
<p><strong>Principal:</strong> <%= principal.getName() %></p>
<p><strong>Attributes:</strong></p>
<ul>
<%for (Object key : principal.getAttributes().keySet()) {%>
<li><%= key %> :
<%
  Object value = principal.getAttributes().get(key);
  if (value instanceof Collection) {
    for (Object o : (Collection) value) {
%>
<%= o %>,
<%
    }
%>
</li>
<%
  } else {
%>
<%= value %></li>
<%
  }
}
%>
</body>
