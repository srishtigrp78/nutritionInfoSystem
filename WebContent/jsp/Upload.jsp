<%@ page language="java" import="java.util.Random" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><!--for comment use ctrl+shift+'/'  -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload pic</title>
<style>
button.bgi
{
background-color:#ff66a3;
border:none;
color: white;
border-radius:10px;
cursor:pointer;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
font-size: 18px;
}
p.man
{
font-family:Arial;
font-size: 13px;
color:black;
line-height: 1px;
}
h3.col
{
color:#eaaee8;
font-family:Arial;
}
hr.siz
{
width:60%;
}
</style>
</head>
<body>
<form method ="post" action="/nutrition/Upload" enctype="multipart/form-data" target="frame1"> <!--multipart means now we are sending binary data-->
<h3 class="col">Upload the product picture</h3>
<hr color="grey" align="left" class="siz">
<p class="man">Without the picture of a product, the user won't be able to recognize it. It makes the information more
interactive.</p>
<p class="man">So, adding a picture to the product's nutritional information is mandatory, </p>
<p class="man">otherwise the process of adding new product will not be completed and the product will not be accessible by the user.</p>
<table align="center" style="margin-top:60px">
<tr><td><input type="file" name="fl"></td></tr>

<tr><td colspan="2"><button type="submit" class="bgi"><b>Upload picture</b></button></td></tr>
</table>
</form>
</body>
</html>