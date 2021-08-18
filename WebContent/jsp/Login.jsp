<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.vertical{
   z-index:20;
   position:absolute;
    width:0%;
    height:30px;
   margin-left:130px;
   margin-top:-35px;
    border:1px dashed;
       color:grey;
}
.verti{
     z-index:10;
    position:absolute;
    width:0%;
    height:30px;
   margin-left:1120px;
   margin-top:-40px;
    border:1px inset;
       color:grey;
}

.vee{
     z-index:10;
    position:absolute;
    width:0%;
    height:30px;
   margin-left:1220px;
   margin-top:-40px;
    border:1px inset;
       color:grey;
}
div.bg
{
background-color:white;
box-shadow: 0 4px 8px 10px rgba(0, 0, 0, 0.2), 0 6px 20px 10px rgba(0, 0, 0, 0.19);
border-radius:5px;
}
div.bga
{
background-color:white;
box-shadow: 0 4px 8px 5px rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
button.bgi
{
background-color:#ff66a3;
border:none;
color: white;
border-radius:10px;
cursor:pointer;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.cd
{
color:#ff66a3;
font-family: Monotype Corsiva;
text-align: center;
}
div.ba
{
font-family:Calibri;
box-shadow: 4px 8px 10px 4px rgba(0, 0, 0, 0.2), 5px 6px 20px 5px rgba(0, 0, 0, 0.19);

color:white;
}

a
{

text-decoration:none;
width:400%;
height:200px;
margin-left:100px;
margin-top:-10px;
color:black;
}
a:hover
{
color:blue;
text-decoration: underline;
}
div.bar:hover
{
opacity:0.9;
}

</style>
<script>
function checkMain()
{
	var ui=document.getElementById("userid").value;
	var upass=document.getElementById("pass").value;
	if(checkEmpty(ui)==false)   //checks the value of textfiled if it is 0 or filled
		{
		alert("userid required");
		document.getElementById("userid").focus();
		return false; //returns false and stops empty form from submitting
		}
	if(checkEmpty(upass)==false)   //checks the value of textfiled if it is 0 or filled
	{
	alert("password required");
	document.getElementById("pass").focus();
	return false; //returns false and stops empty form from submitting
	}
	else
	return true;
}

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="/nutrition/jsp/themes/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="/nutrition/jsp/themes/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
        //The following script is for the group 2 navigation buttons.
        function switchAutoAdvance() {
            imageSlider.switchAuto();
            switchPlayPauseClass();
        }
        function switchPlayPauseClass() {
            var auto = document.getElementById('auto');
            var isAutoPlay = imageSlider.getAuto();
            auto.className = isAutoPlay ? "group2-Pause" : "group2-Play";
            auto.title = isAutoPlay ? "Pause" : "Play";
        }
        switchPlayPauseClass();
    </script>
</head>
<body background="/nutrition/images/sket.jpg" style="height:1000px">
<div style="background:white;font-family:Calibri;font-size:40px;width:102%;height:50px;margin-top:-10px"class="bga">
	<div style="margin-top:15px">
		<img src="/nutrition/images/de.jpg" width="10%" height="40px"></div>
			<div class="vertical"></div>

<div style="margin-top:-40px;margin-left:140px">
<font color="grey">
<b>NuTrIcOuNt</b></font></div>
<!-- <div style="z-index:20;position:absolute;margin-top:-41px;margin-left:930px"><a href="http://www.facebook.com"><img src="/nutrition/images/fb.png" width="13%" height="35px"></a></div>
<div class="verti"></div>
<div style="z-index:20;position:absolute;margin-top:-41px;margin-left:1050px"><a href="http://www.twitter.com"><img src="/nutrition/images/Twitter.png" width="16%" height="35px"></a></div>
<div class="vee"></div>
<div style="z-index:20;position:absolute;margin-top:-41px;margin-left:1160px"><a href="https://in.linkedin.com"><img src="/nutrition/images/linkedin.png" width="20%" height="35px"></a></div>-->

</div>
    
    
   <div id="sliderFrame" style="margin-top:40px">
        <div id="slider" style="margin-left:350px;margin-right:250px;margin-top:40px">
            
            <img src="/nutrition/images/conf.png" />
            <img src="/nutrition/images/collage.png"/>
            <img src="/nutrition/images/any.png" />
            <img src="/nutrition/images/compa.png" />
            <img src="/nutrition/images/calci.png" />
        </div>
        <!--Custom navigation buttons on both sides-->
        <div class="group1-Wrapper">
            <a onclick="imageSlider.previous()" class="group1-Prev"></a>
            <a onclick="imageSlider.next()" class="group1-Next"></a>
        </div>
        <!--nav bar-->
        <div style="text-align:center;padding:20px;z-index:80;">
          /  <a onclick="imageSlider.previous()" class="group2-Prev"></a>
            <a id='auto' onclick="switchAutoAdvance()"></a>
            <a onclick="imageSlider.next()" class="group2-Next"></a>
        </div> 
    </div>
    
<div class="bg" style="width:30%; height:200px;margin-bottom:80px;color:black;margin-top:30px;margin-left:380px">
<Form method="post" action="/nutrition/logincheck" onsubmit="return checkMain()">
<table style="width:50p%;height:200px">
<tr><th><label>UserID:</label></th>
<td><input type="text" name="userid" id="userid" size="30" required="required" placeholder="Enter userid" ></td></tr>
<tr><th><label>Password:</label></th>
<td><input type="password" name="pass" id="pass" size="30" required="required" placeholder="Enter password" ></td></tr>
<tr><th><label>User Type:</label></th>
<td><select name="utype" id="utype">
				<option value="Admin">Admin</option>
				<option value="Consumer">Consumer</option></select></td>
			</tr>
<tr><td colspan=2 align="center">
<center><button type="submit" class="bgi"><font face="Calibri" size="5">Submit</font></button>
<button type="reset"class="bgi"><font face="Calibri" size="5">Reset</font></button></center>

</td></tr>
</table>
</Form>
</div>
<%String ms=request.getParameter("msg");
if(ms!=null)
{%>
<div class="ba" style="width:30%;height:20px;background-color:white;margin-left:380px">
<h2 class="cd" align="center"><%=ms %></h2></div>
<%} %>
<div class="bg" style="width:30%;height:70px;margin-left:380px;background-color:#ffe6ff">
<a href="/nutrition/jsp/Registration.jsp">
<img src="/nutrition/images/register.png" width="200" height="60"></a>
</div>
 
<div style="z-index:20;position:absolute;top:0%;left:0%;width:104%;height:200px;background-color:#ffe6ff;margin-top:1100px">

<div style="margin-top:20px"><a href="/nutrition/jsp/Brands.jsp">Brands</a></div>
<div style="margin-top:20px;margin-right:80px"><a href="/nutrition/jsp/AboutUs.jsp">About us</a></div>
<div style="margin-top:20px"><a href="/nutrition/jsp/ContactUs.jsp">Contact us</a></div>

<div style="margin-left:70px;margin-top:40px">
<h4 align="center">Copyright &copy;Nutricount by Srishti Gupta.All Rights Reserved.</h4></div>


</div>
</body>
</html>