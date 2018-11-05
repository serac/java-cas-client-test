<%@ page import="java.util.Collection" %>
<%@ page import="org.jasig.cas.client.authentication.AttributePrincipal" %>
<%@ page import="org.jasig.cas.client.util.AssertionHolder" %>
<%@ page import="org.jasig.cas.client.validation.Assertion" %>
<jsp:include page="../WEB-INF/jsp/include/top.jsp" />
<h2>Authentication Data</h2>
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
<div class="big-buttons" style="margin-top:40px">
    <a class="button" href="proxy.jsp">Proxy</a>
</div>
<jsp:include page="../WEB-INF/jsp/include/bottom.jsp" />
