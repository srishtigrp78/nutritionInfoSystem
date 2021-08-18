<%@ page language="java" import="java.sql.*,nutrition.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
button.bgi
{
background-color:#ff66a3;
border:none;
color: white;
border-radius:10px;
cursor:pointer;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body>
<form method="post" action="/nutrition/jsp/AssignPic.jsp">
<table border="0">
<tr><th><label>Enter the picture name:</label></th>
 <%Connection con=CrudOperation.createConnection(); 
  	PreparedStatement ps=con.prepareStatement(("Select picname from product_pic where status='Not_assigned'"));
 	 ResultSet rs=ps.executeQuery();%>
 	  <td><Select name="cmbpic" id="cmbpic" style="align:center;width:300%">
 <% 	while(rs.next())
  		{
	  		String a=rs.getString("picname");
	  %>

	
				<option  value="<%=a%>"><%=a%></option>

<% }%>
</select></td></tr>
<tr><th><label>Enter the product id:</label></th>
<%PreparedStatement pst=con.prepareStatement("Select Product_name from produ_nutrition where status='No_pic'");
ResultSet rst=pst.executeQuery();%>
<td><Select name="cmbpr" id="cmbpr"style="align:center;width:300%">
<%while(rst.next())
{
	String b=rst.getString("Product_name");
%>

				<option  value="<%=b%>"><%=b%></option>
<%}%>
</select></td></tr>
<tr><td colspan="2">
<center><button type="submit" class="bgi"><font face="Calibri" size="5">Attach picture</font></Button></center></td></tr>
</table>
</form>
</body>
</html>