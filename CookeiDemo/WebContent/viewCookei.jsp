<%
	Cookie []c=request.getCookies();
for(Cookie ck:c)
{
	out.println(ck.getValue());
}

%>