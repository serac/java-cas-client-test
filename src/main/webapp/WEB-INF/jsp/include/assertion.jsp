<%@ page contentType="text/html;charset=UTF-8" %>
<%
    org.jasig.cas.client.validation.Assertion assertion = org.jasig.cas.client.util.AssertionHolder.getAssertion();
    org.jasig.cas.client.authentication.AttributePrincipal principal = assertion.getPrincipal();
%>
<h2>Authentication Data</h2>
<p><strong>Authentication method:</strong> <%= assertion.getAttributes().get("samlAuthenticationStatement::authMethod") %></p>
<h2>User Data</h2>
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
    } else { %>
        <%= value %></li><%
    }
}%>
</ul>
