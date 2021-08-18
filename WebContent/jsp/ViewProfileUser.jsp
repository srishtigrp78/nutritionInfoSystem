<%@ page language="java" import="java.sql.*,nutrition.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.bar {
  margin-top: 1.0em;
  width:45%;
  height:500px;
margin-left:200px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 30px 0 rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body>
<%HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("Consumer");
if(ui==null||hs.isNew())
{
	response.sendRedirect("/nutrition/jsp/Login.jsp");
}
else
{%>
	
		
		<h3><font face="Calibri" size="5px" color="#eaaee8"> View your Profile</font></h3>
		<hr>

	<%String strsql="select User_id,Password,Name,Gender,Age,Height,Weight,Emailid,Ailments,Profession from registration where User_id=?";
	Connection con=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	con=CrudOperation.createConnection();
	try
	{
		ps=con.prepareStatement(strsql);
		ps.setString(1,ui);
		rs=ps.executeQuery();
		if(rs.next())
		{%>
	<div class="bar">
	<table style="width: 200px; height: 200px ; z-index:40;postion:absolute" align="center" border="0" cellspacing="12" cellpadding="5">
		<tr> <th>Admin Id:</th>
				<th><input type="text" name="usrid" readonly value="<%=rs.getString("User_id")%>"></th>
			<tr><th>Password:</th>
				<th><input type="password" name="pass" readonly	value="<%=rs.getString("Password")%>"></th>
					<tr><th>Name:</th>
				<th><input type="text" name="uname" readonly value="<%=rs.getString("Name")%>"></th>
			<tr><th>Gender:</th>
				<th><input type="text" name="gender" readonly value="<%=rs.getString("Gender")%>"></th></tr>
			<tr><th>Age:</th>
				<th><input type="text" name="Adage" readonly value="<%=rs.getString("Age")%>"></th></tr>
			<tr><th>Height:</th>
				<th><input type="text" name="he" id="he1" readonly value="<%=rs.getString("Height")%>" ></th></tr>
			<tr><th>Weight:</th>
				<th><input type="text" name="we" id="we1" readonly value="<%=rs.getString("Weight")%>"></th></tr>
		
				<tr><th>Email:</th>
				<th><input type="text" name="ema" id="ema1" readonly value="<%=rs.getString("Emailid")%>" ></th></tr>
					
			<tr><th>Ailments:</th>
				<th><input type="text" name="ail" id="ail1" readonly value="<%=rs.getString("Ailments")%>"></th></tr>
			<tr><th>Profession:</th>
				<th><input type="text" name="profs" id="profs1" readonly value="<%=rs.getString("Profession")%>"></th></tr>
			
			
	</table>
	</div>
	<%}
	}
	catch(SQLException se)
	{
		System.out.println(se);
	}
}%>
</body>
</html>