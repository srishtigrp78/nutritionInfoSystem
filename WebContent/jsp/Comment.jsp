<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
p.take
	{
	font-size:12px;
	font-family:Calibri;
	font-weight:140;
	color:#33001a;
	line-height: 2px;
	}
	p.tan
	{
	font-size:12px;
	font-family:Calibri;
	font-weight:140;
	color:#33001a;
	line-height: 2px;
	text-align: center;
	}
	hr.tale
{
color:#f66a3;
width:35%;

}
h1.edi
{
color:#ff66a3;
	font-family: Arial;
	font-weight: bolder;
	text-align:left;
}
button.bgi
{
background-color:#ff66a3;
border:none;
color: white;
border-radius:5px;
font-family:Comic Sans MS;
font-size:20px;
font-weight:bold;
cursor:pointer;

}
button.bgi:hover
{
background-color:white;
color:#ff66a3;
font-weight:bolder;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
table.onto
{
font-family: Comic Sans MS;
font-size: 15px;
}
</style>
</head>
<body>
<%HttpSession hs=request.getSession(false);
String p=(String)hs.getAttribute("keys"); %>
<h1 class="edi">Comments</h1>
<hr class="tale" color="pink" align="left">
<p class="take">It is a beautiful relationship of when you learn something and</p>
<p class="take">persuade in return.Write about your experience, pros and cons you gathered</p>
<p class="take">on the basis of your usage of that food product and aware others...</p>
<p class="take">Remember, others are awaring you too.</p>

<form method="post" action="CommentProduct.jsp">
<table align="center" class="onto" border="0">
<tr><th>User Id:</th>
<td><input type="text" name="ui" id="ui" size="30"></td></tr>
<tr><th>Name:</th>
<td><input type="text" name="un" id="un" size="30"></td></tr>

<tr><th>Product name:</th>
<td><input type="text" name="pid" id="pid" value="<%=p %>" readonly="readonly" size="30"></td></tr>
<tr><th>Subject:</th>
<td><input type="text" name="sub" id="sub" size="30"></td></tr>
<tr><th colspan="2">Write your Comment:</th></tr>
</table>
<p class="tan">Your comment must be of maximum 100 characters.Use strong keywords and be specific.</p>
<p class="tan">Do not use message language e.g., 'r' for 'are' or 'ur' for 'your'.Do not</p>
<p class="tan">mention pricing details.</p>
<center><textarea rows="8" cols="55" name="comme" id="comme"></textarea></center>
<br>
<br>
<center><button class="bgi" type="Submit">Comment</button> </center>
</form>
<%String ms=request.getParameter("msg");
if(ms!=null)
{%>
<div style="box-shadow: 4px 8px 10px 4px rgba(0, 0, 0, 0.2), 5px 6px 20px 5px rgba(0, 0, 0, 0.19);color:#ff66a3">
<h2 align="center"  style="width:20%;height:50px;margin-left:380px;color:#ff66a3;font-family: Monotype Corsiva;text-align: center"><%=ms%></h2></div>
<%} %>
</body>
</html>