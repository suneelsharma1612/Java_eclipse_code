<%
String name=request.getParameter("name");
String email=request.getParameter("email");

Cookie ck=new Cookie("user",name);
Cookie ck1=new Cookie("email",email);

ck.setMaxAge(10);
ck1.setMaxAge(10);

response.addCookie(ck);
response.addCookie(ck1);

response.sendRedirect("viewCookei.jsp");


%>