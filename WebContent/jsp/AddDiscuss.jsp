<%@ page language="java" import="java.sql.*,nutrition.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%String u=request.getParameter("uid");
String c=request.getParameter("concer");
String n=request.getParameter("uname");
String s=request.getParameter("usub");
Connection con=CrudOperation.createConnection();
PreparedStatement ps=con.prepareStatement("insert into discuss(Userid, Name, Subject, Concern) values(?,?,?,?)");
ps.setString(1,u);
ps.setString(2,n);
ps.setString(3,s);
ps.setString(4,c);
int rw=ps.executeUpdate();
if(rw>0)
{
	response.sendRedirect("/nutrition/jsp/Discuss.jsp");
}
%>
</body>
</html>