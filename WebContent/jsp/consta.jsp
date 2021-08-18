<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>	
	/**function rollPic1()
	{
		var im2=document.getElementById("img3");
		im2.src="/logistics/images/pic4.png";
			//alert("hellouser3");	
	}*/
	var arr=new Array(3);
	arr[0]="/nutrition/images/slider1.jpg";
	arr[1]="/nutrition/images/slider4.jpg";
	arr[2]="/nutrition/images/slider6.jpg";
	var i=0;
	function changeImage()
	{
		var im= document.getElementById("img1");
		im.src=arr[i];
		i++;
		if(i>2){
			i=0;
		}
		setTimeout("changeImage()", 3000);
				
	}
	</script>
	<style>
	p.take
	{
	font-size:14px;
	font-family:Calibri;
	font-weight:140;
	color:#33001a;
	z-index:80;
	position:relative;
	}
	h1.tale
	{
	font-size:20px;
	position:relative;
	color:#33001a;
	font-family: Arial;
	z-index:80;
	}
	</style>
</head>
<body onload="changeImage()" oninput="rollPic1()">  
<div style="width:100%;height:100%;top:0%;left:0%;position:absolute;z-index:10;">
<img src="/logistics/images/slide3.jpg" style="width:100%;height:95%;" id="img1"></div>
<h1 class="tale">Introduction</h1>
<hr align="left" style="width:30%;color:grey;position:relative;z-index:80">
<p class="take">We know that you care for your family, so we care about you.
Check out nutritional facts of several brands and natural food products and make smart choices when buying a food stuff....</p>
<p class="take">Learn from the reviews and experience's of others and make out which food products suits your family's health and you.</p>


</body>
</html>