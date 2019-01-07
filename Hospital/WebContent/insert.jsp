<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<jsp:useBean id="obj" class="Folder.Connect"></jsp:useBean>
<% 
int id=5;
String name="Aarti Giri";
String ContactNo="9450390189";
Connection con=obj.getCon();
PreparedStatement ps=con.prepareStatement("insert into tbl_customer values(?,?,?)");
ps.setInt(1, id);
ps.setString(2,name);
ps.setString(3,ContactNo);
int e=ps.executeUpdate();
if(e>0){
	out.println("Inserted");
}
else{
	out.println("Not inserted");
}

%>