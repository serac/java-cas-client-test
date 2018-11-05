<%@ page import="java.util.Collection" %>
<%@ page import="org.jasig.cas.client.authentication.AttributePrincipal" %>
<%@ page import="org.jasig.cas.client.util.AssertionHolder" %>
<%@ page import="org.jasig.cas.client.validation.Assertion" %>
<jsp:include page="../WEB-INF/jsp/include/top.jsp" />
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
<jsp:include page="../WEB-INF/jsp/include/bottom.jsp" />
