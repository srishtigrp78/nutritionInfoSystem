<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="connect.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Employee Search Record</title>
</head>

<body>
<%
int empno;
empno=Integer.parseInt(request.getParameter("keys"));
PreparedStatement psmt=con.prepareStatement("select empno, empname, post, salary  from emp where empno="+empno);
ResultSet rstt=psmt.executeQuery();

%>
<h1><center>Employee Search Details</center></h1>
<table border="1" align="center">
<tr>
<th><span class="style2"><center>EMPNO</center></span></th>
<th><span class="style2"><center>EMP NAME</center></span></th>
<th><span class="style2"><center>EMP POST</center></span></th>
<th><span class="style2"><center>EMP SALARY</center></span></th>
</tr>
<%
rstt.next();
%>
<tr>
<td><span class="style3"><center><%=rstt.getInt(1)%></center></span></td>
<td><span class="style3"><center><%=rstt.getString(2)%></center></span></td>
<td><span class="style3"><center><%=rstt.getString(3)%></center></span></td>
<td><span class="style3"><center><%=rstt.getFloat(4)%></center></span></td>
</tr>
</body>
</html>
