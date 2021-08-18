<%@ page language="java" import="java.sql.*,nutrition.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdatePassAdmin</title><style>

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
  color:white;
  height:80px;
margin-left:200px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 30px 0 rgba(0, 0, 0, 0.19);
}
</style>

<script type="text/javascript">
 function validate2()
 {
	 var e3 = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@#$%^&])([a-zA-Z0-9 ]*).{6,10}$/;
 var sp3 = document.getElementById("usrpass1");
 if(document.sta.usrpass.value=="")
 {
	alert("password is required");
	// sp3.innerHTML = "Password is required!";
	return false;
 }
 else if(e3.test(document.sta.usrpass.value)==false)
 {
	 alert("Use One small, Capital, digit and special symbol with atleast 6 to 10 character long in password");
	// sp3.innerHTML = "Use One small, Capital, digit and special symbol with atleast 6 to 10 character long.";
	 return false;
 }
 else
 {
	 sp3.innerHTML="Ok";
 }
 return false;
 }
</script>
</head>
<body>
<%HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("Admin");
if(ui==null||hs.isNew())
{
	response.sendRedirect("/nutrition/jsp/Login.jsp");
}
else
{
String strsql="select * from registration where User_id=?";
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
	<form method="post" action="/nutrition/jsp/UpdateAdmin.jsp">
	<table border="0" align="center" cellspacing="5" cellpadding="3" style="margin-top:-75px">
		<div class="bar"></div>
			<tr><th>Userid:</th>
				<td><input type="text" name="userid" id="userid" readonly value="<%=ui%>"></td></tr>
		
			<tr><th>Password:</th>
				<td><input type="text" name="pass" id="pass"
					value="<%=rs.getString("Password")%>" onsubmit="return validate2()"></td>
			</tr>
			<tr>
				<td><input type="hidden" name="txthid" id="txthid"
					value="<%=ui%>"></td>
			</tr>
			</div>
			<tr><td colspan=2>
			<center><Button type="Submit" class="bgi"><font face="Calibri" size="5">Edit</font></Button></center></td></tr>
		</table>
	</form>
	<%}		
	}
		catch(SQLException se)
		{
			System.out.println(se);
		}

}%>
</body>
</html>