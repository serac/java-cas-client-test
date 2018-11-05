<jsp:include page="../WEB-INF/jsp/include/top.jsp" /> 

<h1>Authentication Data</h1>
<%
org.jasig.cas.client.validation.Assertion assertion = org.jasig.cas.client.util.AssertionHolder.getAssertion();
org.jasig.cas.client.authentication.AttributePrincipal principal = assertion.getPrincipal();
%>
<p><strong>Principal:</strong> <%= principal.getName() %></p>
<p><strong>Attributes:</strong></p>
<ul>
<%for (Object key : principal.getAttributes().keySet()) {%>
<li><%= key %> :
<%
  Object value = principal.getAttributes().get(key);
  if (value instanceof java.util.Collection) {
    for (Object o : (java.util.Collection) value) {%>
      <%= o %>,<%
    }%></li><%
  } else {%>
    <%= value %></li><%
  }
}
%>
</ul>
<jsp:include page="../WEB-INF/jsp/include/bottom.jsp" />
