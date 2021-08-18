<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
img.shado:hover
{
color:grey;
box-shadow: 0 4px 8px 10px rgba(0, 0, 0, 0.2), 0 6px 20px 10px rgba(0, 0, 0, 0.19);
}
div.bg{
color:grey;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.vertical{
    
    width:0%;
    height:30px;
  
    border:1px double;
       color:white;
}
a{
text-decoration: none;
color:white;
font-family: Calibri;
width:35%;
height:50px;

}
a:hover
{
color:#ff66a3;
background-color: white;
}

div.bgi
{ 
text-transform: none;
}

div.bgi:hover
{
color:#ff3399;
background-color: white;
}
</style>
</head>
<body>
<%HttpSession hsi=request.getSession(false);
String p=(String)hsi.getAttribute("userid"); %>
<div style="background:#ff66a3;font-family:Calibri;font-size:20px;width:105%;height:40px;margin-top:-79px;margin-left:-10px"class="bg">

<div class="bgi" style="width:10%;height:35px;margin-left:50px;margin-top:85px;margin-right:600px">
<a href="/nutrition/jsp/EditProfileUser.jsp" target="frame1"><b>Edit profile</b></a></div>

	<div class="vertical" style=" margin-left:167px;  margin-top:-35px;"></div>

<div class="bgi" style="width:10%;height:35px;margin-left:200px;margin-top:-34px;margin-right:400px">
<a href="/nutrition/jsp/ViewProfileUser.jsp" target="frame1"><b>View profile</b></a></div>

	<div class="vertical" style=" margin-left:317px;  margin-top:-32px;"></div>

<div class="bgi" style="width:15%;height:35px;margin-left:340px;margin-top:-35px;margin-right:400px">
<a href="/nutrition/jsp/ChangePassUser.jsp" target="frame1"><b>Change Password</b></a></div>

	<div class="vertical" style=" margin-left:507px;  margin-top:-33px;"></div>

<div class="bgi" style="width:10%;height:35px;margin-left:550px;margin-top:-35px;margin-right:400px">
<a href="/nutrition/jsp/Discuss.jsp" ><b>Discuss</b></a></div>


<div class="bgi" style="width:8%;height:35px;margin-left:950px;margin-top:-35px;margin-right:400px">
<a href="/nutrition/jsp/Logout.jsp" ><b>Logout</b></a></div>
</div>

<div style="width:40%;height:200px;margin-top:30px;align:center">

			<div style="width:120%;height:800px;margin-top:80px">
		<iframe name="frame1" width="160%" height="600px" style="margin-left:167px;margin-top:-50px;border:0;border-color: black" src="/nutrition/jsp/consta.jsp"></iframe>
			</div>
			</div>
<div style="z-index:40;position:absolute;top:0%;left:0%;margin-top:700px;margin-left:200px">
 <a href="/nutrition/jsp/SeekNutritionInfo.jsp" >
<img src="/nutrition/images/box2.jpg" border="0" class="shado"></a>
</div>

<div style="z-index:40;position:absolute;top:0%;left:0%;margin-top:700px;margin-left:520px">
 <a href="/nutrition/jsp/CompareProduct.jsp" >
<img src="/nutrition/images/box1.jpg" border="0" class="shado"></a>
</div>


<div style="z-index:40;position:absolute;top:0%;left:0%;margin-top:700px;margin-left:870px">
 <a href="/nutrition/jsp/CalculateNutrition.jsp" >
<img src="/nutrition/images/box3.jpg" border="0" class="shado"></a>
</div>

<div style="z-index:40;position:absolute;top:0%;left:0%;width:100%;height:200px;background-color:pink;margin-top:1100px">
<div style="margin-left:70px;margin-top:160px">
<h4 align="center">Copyright &copy;Nutricount by Srishti Gupta.All Rights Reserved.</h4></div>
</div>
</body>
</html>