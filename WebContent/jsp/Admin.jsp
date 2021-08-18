<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<script>
function showStatus()
{
	document.getElementById("picto").style.display="block";
	alert("it will redirect you to the new page......")
	}
</script>
<style>
.cd
{
color:#ff66a3;
font-family: Monotype Corsiva;
text-align: center;
}
a{
text-decoration: none;
color:white;
font-family: Calibri;
text-shadow:  2px 2px 4px #000000;


}


div.bg
{ 
color:grey;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

div.bgi
{ 
color:grey;
}
</style>
<style>
.dropbtn {
    color: white;
    padding: 16px;
    font-size: 16px;
    font-family:Calibri;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 120px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: grey;
}
</style>
</head>
<body background="/nutrition/images/2.jpg">
<%HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("Admin");
if(ui==null||hs.isNew())
{
	response.sendRedirect("/nutrition/jsp/Login.jsp?msg=Unauthorized Access");
}
else
{%>
<div style="background:white;font-family:Calibri;margin-left:100px;width:85%;height:1000px;text-align:center">
<!-- <div style="background:white;margin-left:100px;width:75%;height:10px;text-align:center">
</div>-->
<div style="background:#696969;font-family:Calibri;font-size:16px;width:100%;height:50px;text-align:center;"class="bg">

<div class="dropdown"style="width:20%;margin-right:700px">
  <button class="dropbtn" style="height:50px;background:#696969;margin-right:700px"><b>Profile</b></button>
  <div class="dropdown-content"style="margin-right:700px">
    <a href="/nutrition/jsp/editprofileAdmin.jsp" target="frame1">Edit Profile</a>
    <a href="/nutrition/jsp/ViewProfileAdmin.jsp" target="frame1">View Profile</a>
    <a href="/nutrition/jsp/ChangePassword.jsp" target="frame1">Change Password</a>
  </div>
</div>

<div class="bgi" style="width:15%;height:35px;background:#696969;margin-left:150px;margin-right:800px;margin-top:-35px">
<a href="/nutrition/jsp/seeUserReport.jsp" target="frame1"><b>User Report</b></a></div>

<div class="bgi" style="width:20%;height:35px;background:#696969;margin-left:350px;margin-top:-35px;margin-right:600px">
<a href="/nutrition/jsp/AddProduct.jsp" target="frame1"><b>Add new Product</b></a></div>


<div class="bgi" style="width:20%;height:35px;background:#696969;margin-left:550px;margin-top:-35px;margin-right:400px">
<a href="/nutrition/jsp/Discuss.jsp" target="frame1"><b>Discuss</b></a></div>

<div class="bgi" style="width:20%;height:35px;background:#696969;margin-left:710px;margin-top:-35px;margin-right:400px">
<a href="/nutrition/jsp/LogoutAdmin.jsp" ><b>Logout</b></a></div>
</div>
<%String ms=request.getParameter("msg");
if(ms!=null)
{%>
<h2 class="cd" align="center"><%=ms %></h2>
<%} %> 
<div style="width:40%;height:300px;margin-top:20px;align:center">

<div style="width:120%;height:800px;margin-top:80px;margin-left:15px">
		<iframe name="frame1" width="200%" height="800px" style="margin-right:70px;margin-left:15px;margin-top:10px;border:0px" src="/nutrition/jsp/constant.jsp"></iframe>
	</div>
</div>
<%}%>
</body>
</html>