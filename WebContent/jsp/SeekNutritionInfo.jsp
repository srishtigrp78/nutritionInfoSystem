<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function validate1()
{
 var e1 = /^[a-zA-Z ]*$/;
 var sp1 = document.getElementById("keys1");
 if(document.search.keys.value=="")
 {
	 alert("Product name is required");
	//sp1.innerHTML = "User Name is required!";
	return false;
 }
 else if(e1.test(document.search.keys.value)==false)
 {
	 alert("only alphabets are applicable in Product name and first letter must be lowercase!");
	 //sp1.innerHTML = "Only alphabets are applicable!";
	 return false;
 }
 else
 {
	 sp1.innerHTML="Ok";
 }
 return false;
}


</script>
<style>
hr.edit
{

width:50%;
}
p.take
	{
	font-size:12px;
	font-family:Calibri;
	font-weight:140;
	color:#33001a;
	line-height: 2px;
	}
	h1.tale
	{
	
	color:#ff66a3;
	font-family: Arial;
	font-weight: bolder;
	}
input.bgi
{
width:7%;
height:41px;
opacity:1;
margin-bottom:-16px;
border-radius:9px;
}
input.bgi:hover
{
opacity:0.7;
}
a{
background-color:#ff66a3;
text-decoration:none;
border:none;
color: white;
border-radius:5px;
align:center;
cursor:pointer;
font-family:Calibri;
font-size:20px;
font-style:normal;
font-weight:bold;

}
a:hover
{
font-style:italic;
color:#ff66a3;
font-weight:bolder;
background-color:white;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body>
<h1 class="tale">Seek Nutritional Information</h1>
<hr align="left" color="#ffb3d1" class="edit">
<p class="take">Here you can view nutritional facts about a specific food item by just </p>
<p class="take">entering its name and you will be provide with a lots of useful information about a food product.</p>


<form method="post" action="/nutrition/jsp/SeekNutrition.jsp" target="frame1" name="search">
<table border="0" align="center">
<tr><td><input type="text" name="keys" id="keys1" onblur="return validate1()" size="70" style="height:35px" >
<input type="image" src="/nutrition/images/Searchico.png" class="bgi" alt="Submit">
</td></tr>
</table>
</form>


		<div style="width:120%;margin-top:100px">
		<iframe name="frame1" width="80%" height="2900px" style="margin-left:10px;margin-top:-50px;border:0" src="/nutrition/jsp/SeekNutrition.jsp"></iframe>
			</div>
	<!-- <div style="width:190%;height:600px;margin-top:-589px">
		<iframe name="frame2" width="33%" height="700px" style="margin-left:455px;margin-top:-60px;border:1;border-color:black" src="/nutrition/jsp/NutritionInfo.jsp"></iframe>
			</div>		-->
			
</body>
</html>