
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mybean.Connect"%>
<%
int sno=Integer.parseInt(request.getParameter("sno"));
String name=request.getParameter("name");
String email=request.getParameter("email");


Connect cn=new Connect();
Connection conn=cn.getConnection();

PreparedStatement ps=conn.prepareStatement("insert into stu values(?,?,?)");
ps.setInt(1, sno);
ps.setString(2, name);
ps.setString(3, email);

int e=ps.executeUpdate();
if(e>0)
{
	out.println("Data Inserted");
}
else
{
	out.println("Error !! not inserted");
}
%>