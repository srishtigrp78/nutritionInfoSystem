<%@ page language="java" import="java.sql.*,nutrition.*" import="java.io.PrintWriter" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
a{
background-color:#ff66a3;
text-decoration:none;
border:none;
color: white;
border-radius:5px;
align:center;
cursor:pointer;
font-family:Calibri;
font-size:20px;
font-style:normal;
font-weight:bold;

}
a:hover
{
font-style:italic;
color:#ff66a3;
font-weight:bolder;
background-color:white;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body >

<%
HttpSession hs=request.getSession(false);
String p=(String)hs.getAttribute("keys");

Connection con=CrudOperation.createConnection();
PreparedStatement pst=con.prepareStatement("Select Name,Subject,Comment from comment where Product_name=?");
pst.setString(1,p);
ResultSet rsut=pst.executeQuery();
int i=0;
while(rsut.next())
{%>		
		<div style="width:90%;background-color:#FFACD;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);color:black;font-family:Arial;font-size: 14px">
		<b><label>Name:</label></b><%=rsut.getString("Name")%><br><b><label>Subject:</label></b><%=rsut.getString("Subject")%><br><b><label>Comment:</label></b><%=rsut.getString("Comment")%></div>
<%i=i+1;
	
}
if(i<1)
{%>
<h2>Be the first to review!</h2>
<%}%>
</body>
</html>