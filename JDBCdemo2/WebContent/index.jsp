<%
session.setAttribute("logval", 0);
%>
<html>
<head>
<title>
Signup here
</title>
</head>
<body>
	<form action="code.jsp?act=1" method="post">
		Username:
		<input type="text" name="un"><br>
		Email:
		<input type="email" name="em"><br>
		Password:
		<input type="password" name="pw"><br>
		<input type="submit" value="Sign Up">		
	</form>
	<a href="login.jsp">Login here</a>
</body>
</html>