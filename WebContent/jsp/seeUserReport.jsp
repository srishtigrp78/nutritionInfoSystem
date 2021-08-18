<%@ page language="java" import="java.sql.*,nutrition.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table.bar
{
border-left-style: dashed;
border-bottom-style: dashed;
border-right-style: dashed;
border-top-style: dashed;
border-left-color:grey ;
border-bottom-color: grey;
border-top-color:grey;
border-right-color:grey; 

}
</style>
</head>
<body>
<center><h2><u>User Report</u></h2></center>
<hr>
  <table class="bar" bordercolor="grey"  width="50%" height="30%" cellpadding="8" cellspacing="15" align="center">
  <tr><th><u>User id</u></th><th><u>Password</u></th><th><u>Name</u></th><th><u>Gender</u></th><th><u>Age</u></th><th><u>Height(cms)</u></th><th><u>Weight(kgs)</u></th><th><u>Email Id</u></th>
  <th><u>Ailments</u></th><th><u>Profession</u></th></tr>
  
  <%Connection con=CrudOperation.createConnection(); 
  	PreparedStatement ps=con.prepareStatement(("Select User_id,Password,Name,Gender,Age,Height,Weight,Emailid,Ailments,Profession from registration"));
  ResultSet rst=ps.executeQuery();
  while(rst.next())
  {
	  String a=rst.getString("User_id");
	  String b=rst.getString("Password");
	  String c=rst.getString("Name");
	  String d=rst.getString("Gender");
	  int e=rst.getInt("Age");
	  int f=rst.getInt("Height");
	  int g=rst.getInt("Weight");
	  String h=rst.getString("Emailid");
	  String i=rst.getString("Ailments");
	  String j=rst.getString("Profession");
	%>  
  <tr>
<td><b><font color='black'><%=a%></font></b></td>
<td><b><font color='black'><%=b%></font></b></td>
<td><b><font color='black'><%=c%></font></b></td>
<td><b><font color='black'><%=d%></font></b></td>
<td><b><font color='black'><%=e%></font></b></td>
<td><b><font color='black'><%=f%></font></b></td>
<td><b><font color='black'><%=g%></font></b></td>
<td><b><font color='black'><%=h%></font></b></td>
<td><b><font color='black'><%=i%></font></b></td>
<td><b><font color='black'><%=j%></font></b></td>
</tr>
<%}%>
  </table>
</body>
</html>