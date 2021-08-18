<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*,nutrition.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String c=request.getParameter("cmbpic");
String d=request.getParameter("cmbpr");

Connection con=CrudOperation.createConnection();
try
{
	
		PreparedStatement ps=con.prepareStatement("Update produ_nutrition set picname=?,status=? where Product_name=?");
		PreparedStatement pst=con.prepareStatement("Update product_pic set status=? where picname=?");
		ps.setString(1,c);
		ps.setString(2,"Pic_assigned");
		ps.setString(3,d);
		pst.setString(1,"Pic_assigned");
		pst.setString(2,c);
		int rw=ps.executeUpdate();
		int rw1=pst.executeUpdate();
			if(rw>0 && rw1>0)
				{
				
					System.out.println("Hurrah!row updated");
					response.sendRedirect("/nutrition/jsp/AddProduct.jsp?msg='<b>'Product added successfully!Thank you'</b>'");
				}
}
catch(SQLException se)
{
	System.out.println("se");
}
%>
</body>
</html>