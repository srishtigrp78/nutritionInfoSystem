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
<script>
function validate2()
{
 var e1 = /^[a-zA-Z ]*$/;
 var sp1 = document.getElementById("keys1");
 if(document.sear.keys.value=="")
 {
	 alert("Product name is required");
	//sp1.innerHTML = "User Name is required!";
	return false;
 }
 else if(e1.test(document.sear.keys.value)==false)
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
</style>
</head>
<body>
<h1 class="tale">Compare food products</h1>
<hr align="left" color="#ffb3d1" class="edit">
<p class="take">This is an exciting platform where you can compare nutritional facts of two food products</p>
<p class="take"> of different brand and make out which one is better for you...</p>


<form method="post" action="/nutrition/jsp/SeekNutrition.jsp" target="frame1" name="search">
<table border="0" align="center">
<tr><td><input type="text" name="keys" id="keys1" size="70" onblur="return validate1()" style="height:35px" >
<input type="image" src="/nutrition/images/Searchico.png" class="bgi" alt="Submit">
</td></tr>
</table>
</form>
<form method="post" action="/nutrition/jsp/SeekNutritionS.jsp"  target="frame3" name="sear">
<table border="0" align="center">
<tr><td><input type="text" name="keys" id="keys1" size="70" onblur="return validate2()" style="height:35px" >
<input type="image" src="/nutrition/images/Searchico.png" class="bgi" alt="Submit">
</td></tr>
</table>
</form>
<h3>Scroll to the left to see the other product....</h3>
		<div style="width:120%;height:1600px;margin-top:100px">
		<iframe name="frame1" width="100%" height="1600px" style="margin-left:10px;margin-top:-50px;border:0" src="/nutrition/jsp/SeekNutrition.jsp"></iframe>
			</div>
	 <div style="width:120%;height:2500px;margin-top:-589px;margin-left:30px">
		<iframe name="frame3" width="120%" height="2500px" style="margin-left:1355px;margin-top:-60px;border:0" src="/nutrition/jsp/SeekNutritionS.jsp"></iframe>
			</div>
</body>
</html>