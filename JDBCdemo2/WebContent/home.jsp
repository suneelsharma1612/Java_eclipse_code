<%
String str=session.getAttribute("logval").toString();
if(Integer.parseInt(str)!=1){
	response.sendRedirect("login.jsp");
}
%>
<h1>Welcome, 
<%= session.getAttribute("user") %>
</h1>