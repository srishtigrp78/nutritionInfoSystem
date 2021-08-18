<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
h1.tale
	{
	
	color:#ff66a3;
	font-family: Arial;
	font-weight: bolder;
	}
hr.edit
{
width:50%;
}
button.bgi
{
font-size:20px;
font-family:Calibri;
font-weight:bold;
background-color:#ff66a3;
border:none;
color: white;
border-radius:5px;
cursor:pointer;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
p.take
	{
	font-size:12px;
	font-family:Calibri;
	font-weight:140;
	color:#33001a;
	line-height: 2px;
	}
	</style>
</head>
<body>

<div style="margin-top:50px">
<h1 class="tale">Discuss</h1>
<hr align="left" color="#ffb3d1" class="edit">
<p class="take">Express your opinions on products, food items, and</p>
<p class="take">post health tips, and discuss about health issues and remedies </p>
<p class="take">with others..</p></div>
<%HttpSession hsi=request.getSession(false);
String p=(String)hsi.getAttribute("userid"); %>
	<Form method="post" action="/nutrition/jsp/AddDiscuss.jsp">
		<table style="width: 200px; height: 200px; align: center">
			<tr>
				<th><label>UserId:</label></th>
				<td><input type="text" name="uid" id="uid" value="<%=p %>" readonly="readonly" ></td>
			</tr>
			<tr>
				<th><label>Name:</label></th>
				<td><input type="text" name="uname"
					id="uname" placeholder="Enter user name" required="required"></td>
			</tr>
			<tr>
				<th><label>Subject:</label></th>
				<td><input type="text" name="usub"
					id="usub" placeholder="Enter subject" required="required"></td>
			</tr>
			<tr>
				<th><label>Write your concern:</label></th>
				<td><textArea rows=10 cols=60 class="fmt" id="concer"
						name="concer">
</textArea></td>
			</tr>
		</table>
		<div style="margin-left: 100px">
			<button class="bgi" type="submit">Submit</button>
		</div>
	</Form>

</body>
</html>