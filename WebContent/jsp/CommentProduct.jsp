<%@ page language="java" import="java.sql.*,nutrition.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String ad=request.getParameter("pid");
String ag=request.getParameter("un");
String ae=request.getParameter("ui");
String af=request.getParameter("comme");
String ah=request.getParameter("sub");
Connection con=CrudOperation.createConnection();
PreparedStatement ps=con.prepareStatement("insert into comment(Comment,Product_name,User_id,Name,Subject) values(?,?,?,?,?)");
ps.setString(1,af);
ps.setString(2,ad);
ps.setString(3,ae);
ps.setString(4,ag);
ps.setString(5,ah);
int rw=ps.executeUpdate();
if(rw>0)
{
	response.sendRedirect("/nutrition/jsp/SeeComment.jsp?msg=<b><font color:'#ff66a3'>Comment added successully!!Thank you!</font></b>");
	System.out.println("row updated successfully");
}%>



</body>
</html>