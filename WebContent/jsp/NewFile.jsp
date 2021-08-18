
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.transparent {
	zoom: 1;
	filter: alpha(opacity=50);
	opacity: 0.5;
	height: 4em;
 
  background: black;
  border-top: 3px solid #ccc;
  border-bottom: 3px solid #ccc;
   padding-top: 2em;
  margin-top: 5.0em;
  
}
.bar {
zoom: 1;
	filter: alpha(opacity=50);
  height: 4em;
   opacity: 1;
  background: transparent;
  border-top: 3px solid #ccc;
  border-bottom: 3px solid #ccc;
   padding-top: 2em;
  margin-top: 5.0em;
  
}

h2.ontop {
  position: relative;
  top: 4.7em;
}
</style>
</head>
<body background="/nutrition/images/reg.jpg">
<h2 class="ontop" >Haha! I'm free of my transparent prison.</h2>
<div class="transparent"></div>
</body>
</html>