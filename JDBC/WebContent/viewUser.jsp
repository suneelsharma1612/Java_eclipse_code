case 3:
int uid=Integer.parseInt(request.getParameter("id"));
ps=conn.prepareStatement("delete from tbl_logdata where logdata_id=?");

ps.setInt(1,uid);
if(ps.executeUpdate()>0){
out.println("user delete");
}
else{
out.println("error");
}
case 4:
uid=Integer.parseInt(request.getParameter("id"));
em=request.getparameter("em");
String un=request.getParameter("un");

ps=conn.preparestatement("update tbl_logdata set logdata_username=? , logdata_email=? , where logdata_id=?");
ps.setInt(1,id);
ps.setString(2,)
ResultSet rs=ps.executeQuery();
if(rs.next()){
%>
<form action="code.jsp?act=4" method="post">
Username:<input type="text" value="<%= rs.getString(2) %>" name="un"><br>
Email:<input type="email" value="<%= rs.getString(3) %>" name="em"><br>
<input type="hidden" value="<%= id %>" name="id">
<input type="submit" value="Update">
</form>
}