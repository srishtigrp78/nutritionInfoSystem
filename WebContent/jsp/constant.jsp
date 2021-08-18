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
	font-size:20px;
	font-family:Monotype corsiva;
	font-weight:bolder;
	color:black;
	z-index:40;
	position:relative;
	}
	</style>
</head>
<body onload="changeImage()" oninput="rollPic1()">  
<div style="width:100%;height:100%;top:0%;left:0%;position:absolute;z-index:10;">
<img src="/logistics/images/slide3.jpg" style="width:100%;height:100%;" id="img1"></div>
<marquee direction="left"><p class="take">Health is wealth!</p></marquee>
<marquee direction="right"><p class="take">Care about it!</p></marquee>
</body>
</html>