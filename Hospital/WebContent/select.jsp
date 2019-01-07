<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<jsp:useBean id="obj" class="Folder.Connect"></jsp:useBean>

<% 
Connection con=obj.getCon();
PreparedStatement ps=con.prepareStatement("select * from tbl_customer");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
out.println(rs.getInt(1));
out.println(rs.getString(2));
out.println(rs.getString(3));
}

%>
