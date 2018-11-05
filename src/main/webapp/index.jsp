<jsp:include page="WEB-INF/jsp/include/top.jsp" />
<h1>Public Page</h1>
<p>There's nothing private here.</p>
<p>The <a href="gateway/">gateway area</a> is protected by CAS but does not require authentication.</p>
<p>The <a href="secure/">secure area</a> requires CAS authentication.</p>
<p>The <a href="renew/">high-security area</a> forces CAS authentication even for existing SSO session.</p>
<jsp:include page="WEB-INF/jsp/include/bottom.jsp" />
