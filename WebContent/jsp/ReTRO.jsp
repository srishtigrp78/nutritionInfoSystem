<%@ page language="java" 
import=" java.sql.*,ecollege.ser.*"
import ="java.io.File"
import ="java.io.IOException"
import ="java.io.PrintWriter"


import ="java.sql.Connection"

import ="java.util.Enumeration"

import="javax.servlet.*"


import ="com.oreilly.servlet.MultipartRequest"
import ="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"

 contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String p=request.getParameter("a");
String path=getServletContext().getRealPath("/");

String ui="scott@";// this is a folder in the server


String strsql="Select picname from propic where picid=?";
Connection con=CrudOperation.createConnection();
PreparedStatement ps=con.prepareStatement(strsql);
ps.setString(1,p);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
String q=rst.getString("picname");
%>
<img src="E:\javad\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ecollege\scott@\<%=q%>" width="100%" height="800px"></img>
<%} %>
</body>
</html>