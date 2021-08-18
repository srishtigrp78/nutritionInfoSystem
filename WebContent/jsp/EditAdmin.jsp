<%@ page language="java" import="java.sql.*,nutrition.*;" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EditAdmin</title>
</head>
<body>
<%String a=request.getParameter("Adage");
String b=request.getParameter("he");
String c=request.getParameter("we");
String d=request.getParameter("ema");
String e=request.getParameter("ail");
String f=request.getParameter("profs");
HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("Admin");
String strupdate="update registration set Age=?, Height=?, Weight=?, Emailid=?, Ailments=?, Profession=? where User_id=?";
Connection con=CrudOperation.createConnection();
			try
			{
				PreparedStatement ps=con.prepareStatement(strupdate);
				ps.setString(1,a);
				ps.setString(2,b);
				ps.setString(3,c);
				ps.setString(4,d);
				ps.setString(5,e);
				ps.setString(6,f);
				ps.setString(7, ui);
				int rw=ps.executeUpdate();
				if(rw>0)
					{
						response.sendRedirect("/nutrition/jsp/ViewProfileAdmin.jsp");
					}

			}
					catch(SQLException se)
						{
							System.out.println(se);
						}


 %>
</body>
</html>