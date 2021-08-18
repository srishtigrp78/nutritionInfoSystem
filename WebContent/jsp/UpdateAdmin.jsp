<%@ page language="java" import="java.sql.*,nutrition.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Admin</title>
</head>
<body>
<%String upass=request.getParameter("pass");
		
		String ua=request.getParameter("txthid");
		String strupdate="update login set Password=? where User_id=?";
		String strupdate1="update registration set Password=? where User_id=?";
		Connection con=CrudOperation.createConnection();
		try
		{
			PreparedStatement ps=con.prepareStatement(strupdate);
			PreparedStatement pst=con.prepareStatement(strupdate1);
			ps.setString(1,upass);
			ps.setString(2,ua);
			pst.setString(1,upass);
			pst.setString(2,ua);
			int rw=ps.executeUpdate();
			int rw1=pst.executeUpdate();
			if(rw>0 && rw>0)
			{
			response.sendRedirect("/nutrition/jsp/ChangePassword.jsp");
			System.out.println("row updated");
			}
		
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}%>
</body>
</html>