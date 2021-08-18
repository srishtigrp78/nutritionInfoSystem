<%@ page language="java" import="java.sql.*,nutrition.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.vertical{
    
    width:0%;
    height:70px;
   margin-left:156px;
    border:1px inset;
    marign-top:8px;
    color:#ff66a3;
}
button.bgi
{
background-color:#ff66a3;
border:none;
color: white;
border-radius:10px;
cursor:pointer;
margin-right:23px;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.bar {
  margin-top: 1.0em;
  width:45%;
  height:80px;
margin-left:200px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 30px 0 rgba(0, 0, 0, 0.19);
}
</style>

</head>
<body>
<%Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("Consumer");
String strsql="select * from login where User_type='Consumer' and User_id=?";
con=CrudOperation.createConnection();
try
{
	ps=con.prepareStatement(strsql);
	ps.setString(1,ui);
	rs=ps.executeQuery();%>
	<h3 align="center"><font face="Monotype corsiva" size="5px" color="#eaaee8">Change Password</font></h3>
			<div class="bar">
		
	<form method="post" action="/nutrition/jsp/UpdatePassUser.jsp">
		<table border="0" align="center" cellspacing="5" cellpadding="3" style="margin-top:-55px">
			<tr><th>Userid</th><div class="vertical"></div>
				<th>Password</th></tr>
			<%while(rs.next())
		{%>
		
			<tr><td><%=ui%></td>
				<td><%=rs.getString("Password") %></td></tr>
				
			<%}%>
				</div>
			<tr><td colspan=2>
			<center><Button type="Submit" class="bgi"><font face="Calibri" size="5">Edit</font></Button></center></td></tr>
		</table>
	</form>

	<%}
catch(SQLException se)
{
System.out.println(se);
}%>
</body>
</html>