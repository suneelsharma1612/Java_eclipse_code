<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<jsp:useBean id="con" class="dbPack.Connect"></jsp:useBean>

<%
Connection conn=con.getCon();
String action=request.getParameter("act");

switch(action){
case "1":
	String username=request.getParameter("un");
	String email=request.getParameter("em");
	String password=request.getParameter("pw");
	int id=0;
	
	
	PreparedStatement ps=conn.prepareStatement("select count(*) from tbl_logdata");
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		id=rs.getInt(1)+1;
	}
	
	PreparedStatement ps1=conn.prepareStatement("insert into tbl_logdata values(?,?,?,?)");
	ps1.setInt(1, id);
	ps1.setString(2, username);
	ps1.setString(3, email);
	ps1.setString(4, password);
	int e=ps1.executeUpdate();
	if(e>0){
		response.sendRedirect("login.jsp");
	}
	else{
		out.println("Error");
	}
break;

case "2":
	String em=request.getParameter("em");
	String pw=request.getParameter("pw");
	
	PreparedStatement login=conn.prepareStatement("select * from tbl_logdata where logdata_email=? and logdata_password=?");
	login.setString(1, em);
	login.setString(2, pw);
	ResultSet res=login.executeQuery();
	if(res.next()){
		session.setAttribute("user", res.getString(2));
		session.setAttribute("logval", 1);
		response.sendRedirect("home.jsp");
	}
	else{
		response.sendRedirect("login.jsp");
	}
break;
}

%>