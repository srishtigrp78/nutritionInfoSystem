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
p.take
	{
	font-size:12px;
	font-family:Calibri;
	font-weight:140;
	color:#33001a;
	line-height: 2px;
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
	</style>
</head>
<body>
<div style="margin-top:50px">
<h1 class="tale">Calculate Nutritional Needs</h1>
<hr align="left" color="#ffb3d1" class="edit">
<p class="take">As you age, changes occur in your body that can affect your nutritional needs. </p>
<p class="take"> The aging process affects the body's absorption of many nutrients. Make a count on your nutritional needs </p>
<p class="take">as you age..</p></div>

<div class="calci">
<form method="post" action="/nutrition/jsp/Calculator.jsp" target="frame5">
<center><Select name="nut" id="nut">
<option value="default">Select your age</option>
<option value="six">0-6 months(Babies-Birth to six months)</option>
<option value="twelve">6-12 months(Babies-six to 12 months of age)</option>
<option value="one">1-9 years(younger children)</option>
<option value="ten">10-16 years(Children entering their teenage years)</option>
<option value="eighteen">18+ years(Older teenagers and young adults)</option>
<option value="pregnant woman">Pregnant women</option>
<option value="Mothers">Breastfeeding mothers</option>
<option value="Menopause">Menopausal women</option>
<option value="Old">Older people</option>
</Select></center>
<br>
<br>
<br>
<center><button type="submit" class="bgi">Submit</button></center>
</form>
</div>
<div style="width:120%;height:900px;margin-top:80px">
		<iframe name="frame5" width="160%" height="900px" style="margin-left:16px;margin-top:30px;border:0;border-color: black" src=""></iframe>
			</div>
</body>
</html>