<%@ page language="java" import="java.util.Random;" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
<script>
function validate1()
{
var e1 = /^[a-zA-Z ]*$/;
var sp1 = document.getElementById("pname1");
if(document.prd.pname.value=="")
{
	alert("Product name is required");
	 //sp2.innerHTML = "User Name is required!";
	return false;
}
else if(e1.test(document.prd.pname.value)==false)
{
	 alert("Only alphabets are applicable in product name");
	 //sp2.innerHTML = "Only alphabets are applicable!";
	 return false;
}
else
{
	 sp2.innerHTML="Ok";
}
}
</script>
<script>
function validate2()
{
var e2 = /^[a-zA-Z ]*$/;
var sp2 = document.getElementById("ptype1");
if(document.prd.ptype.value=="")
{
	alert("Product type is required");
	 //sp2.innerHTML = "User Name is required!";
	return false;
}
else if(e2.test(document.prd.ptype.value)==false)
{
	 alert("Only alphabets are applicable in product type");
	 //sp2.innerHTML = "Only alphabets are applicable!";
	 return false;
}
else
{
	 sp2.innerHTML="Ok";
}
}
</script>
<script>
function validate3()
{
var e3 = /^[a-zA-Z ]*$/;
var sp3 = document.getElementById("pbrand1");
if(document.prd.pbrand1.value=="")
{
	alert("Brand name is required");
	 //sp2.innerHTML = "User Name is required!";
	return false;
}
else if(e3.test(document.prd.pbrand1.value)==false)
{
	 alert("Only alphabets are applicable in brand name");
	 //sp2.innerHTML = "Only alphabets are applicable!";
	 return false;
}
else
{
	 sp2.innerHTML="Ok";
}
}
</script>
<script>
function validate4()
{
var e4= /^[a-zA-Z ]*$/;
var sp4 = document.getElementById("pcert1");
if(document.prd.pcert.value=="")
{
	alert("Certification is required.If no certification just write 'no''");
	 //sp2.innerHTML = "User Name is required!";
	return false;
}
else if(e4.test(document.prd.pcert.value)==false)
{
	 alert("Only alphabets are applicable in certification");
	 //sp2.innerHTML = "Only alphabets are applicable!";
	 return false;
}
else
{
	 sp2.innerHTML="Ok";
}
}
</script>

<style>
div.ba
{
font-family:Calibri;
box-shadow: 4px 8px 10px 4px rgba(0, 0, 0, 0.2), 5px 6px 20px 5px rgba(0, 0, 0, 0.19);

color:white;
}
button.bgi
{
background-color:#ff66a3;
border:none;
color: white;
border-radius:10px;
cursor:pointer;
margin-top:890px;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.cd
{
color:#ff66a3;
font-family: Monotype Corsiva;
text-align: center;
}
div.bg
{
background-color:white;

border-radius:5px;

}

	
div.bar {
  margin-top: 1.0em;
  width:75%;
  height:2600px;
margin-left:100px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 30px 0 rgba(0, 0, 0, 0.19);
}
.des
{
font-family: Calibri;
color:black;

</style>
</head>
<body>
<h2 class="des" style="size:5px;color:#eaaee8;">A new Product has arrived!! Please add it in the list... </h2>
<hr>
<div class="bar">
<div id="prod">
<%!Random rd;
int prdid;
String pid;
%>
<%rd=new Random();
prdid=rd.nextInt(Integer.MAX_VALUE);
pid="PD"+prdid;
%>

</div>
<%String ms=request.getParameter("msg");
if(ms!=null)
{%>
<div class="ba" style="width:30%;height:20px;background-color:white;margin-left:380px">
<h2 class="cd" align="center"><%=ms %></h2></div>
<%} %>
<Form method="post" action="/nutrition/NewProduct" name="prd" onsubmit="return validate()">
<h2 class="des" align="center" style="size:5px;color:#eaaee8;marigin-left:4px">Product Information</h2>
				<hr style="width:75%">
		<div class="bg" align="center" style="width: 75%; height:200px">
		<table  class="on"style="width:75%; height: 200px;margin-left:175px;align:center" border="0" cellspacing="5">
		<tr><th><label>Product id:</label></th>
<td><input type="text" name="produid" id="produid" readonly value="<%=pid%>"></td></tr>
			<tr><th><label>Product Name:</label></th>
				<td><input type="text" name="pname"id="pname1" size="20" placeholder="Enter product name" onblur="return validate1()" required="required">
			
			<tr><th><label>Product Type:</label></th>
				<td><input type="text" name="ptype" id="ptype1" size="20" placeholder="Enter product type" onblur="return validate2()" required="required"></td></tr>
			
			<tr><th><label>Brand:</label></th>
				<td><input type="text" name="pbrand" id="pbrand1" placeholder="Enter brand" size="20" onblur="return validate3()" required="required"></td></tr>
		
			<tr><th><label>Certification:</label></th>
				<td><input type="text" name="pcert" id="pcert1" placeholder="Enter certifications" onblur="return validate4()" required="required"></td></tr>
				</table>
				</div>
				
				
				
			<h2 class="des" align="center" style="size:5px;color:#eaaee8;marigin-left:4px">Nutritional value </h2>
				<hr style="width:75%">
						<div class="bg" align="center" style="width: 75%; height:1200px">
		
	<table  class="on"style="width:75%; height: 450px;margin-top:30px;margin-left:175px;align:center" border="0" cellspacing="5" cellpadding="5">
			<tr><th><label>Servings:</label></th>
				<td><input type="text" name="pserv" id="pserv1" placeholder="Enter servings" required="required"></td></tr>
			<tr><th><label>Protein(g/mg):</label></th>
	<td><input type="text" name="prot" id="prot" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Fat(g/mg):</label></th>
				<td><input type="text" id="pfat" name="pfat" placeholder="0g" required="required"></td></tr>
           <tr><th><label>Carbohydrates(g/mg):</label></th>
				<td><input type="text" name="pcarb" id="pcarb" placeholder="0g" required="required"></td></tr>
					<tr><th><label>Vitamin A(g/mg):</label></th>
	<td><input type="text" name="pva" id="pva" placeholder="0g" required="required"></td></tr>
	<tr><th><label>Vitamin B1(g/mg):</label></th>
				<td><input type="text" id="pvb1" name="pvb1" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Vitamin B2(g/mg):</label></th>
				<td><input type="text" id="pvb2" name="pvb2" placeholder="0g" required="required"></td></tr>
           <tr><th><label>Vitamin B3(g/mg):</label></th>
				<td><input type="text" name="pvb3" id="pvb3" placeholder="0g" required="required"></td></tr>		
			<tr><th><label>Vitamin B5(g/mg):</label></th>
	<td><input type="text" name="pvb5" id="pvb5" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Vitamin B6(g/mg)</label></th>
				<td><input type="text" id="pvb6" name="pvb6" placeholder="0g" required="required"></td></tr>
           <tr><th><label>Vitamin B7(g/mg):</label></th>
				<td><input type="text" name="pvb7" id="pvb7" placeholder="0g" required="required"></td></tr>		
			<tr><th><label>Vitamin B12(g/mg):</label></th>
	<td><input type="text" name="pvb12" id="pvb12" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Vitamin C(g/mg):</label></th>
				<td><input type="text" id="pvc" name="pvc" placeholder="0g" required="required"></td></tr>
           <tr><th><label>Vitamin D(g/mg):</label></th>
				<td><input type="text" name="pvd" id="pvd" placeholder="0g" required="required"></td></tr>		
			<tr><th><label>Vitamin E(g/mg):</label></th>
	<td><input type="text" name="pve" id="pve" placeholder="0g" required="required"></td></tr>
		
           <tr><th><label>Vitamin K(g/mg):</label></th>
				<td><input type="text" name="pvk" id="pvk" placeholder="0g" required="required"></td></tr>		
			<tr><th><label>Folic acid(g/mg):</label></th>
	<td><input type="text" name="pfol" id="pfol" placeholder="0g" required="required"></td></tr>
           <tr><th><label>Sodium(g/mg):</label></th>
				<td><input type="text" name="psod" id="psod" placeholder="0g" required="required"></td></tr>		
			<tr><th><label>Magnesium(g/mg):</label></th>
	<td><input type="text" name="pmag" id="pmag" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Phosphorus(g/mg):</label></th>
				<td><input type="text" id="phos" name="phos" placeholder="0g" required="required"></td></tr>
           <tr><th><label>Potassium(g/mg):</label></th>
				<td><input type="text" name="potas" id="potas" placeholder="0g" required="required"></td></tr>		
			<tr><th><label>Calcium(g/mg):</label></th>
	<td><input type="text" name="pcal" id="pcal" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Iron(g/mg):</label></th>
				<td><input type="text" id="pir" name="pir" placeholder="0g" required="required"></td></tr>
           <tr><th><label>Iodine(g/mg):</label></th>
				<td><input type="text" name="piod" id="piod" placeholder="0g" required="required"></td></tr>	
			<tr><th><label>Zinc(g/mg):</label></th>
	<td><input type="text" name="pzin" id="pzin" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Copper(g/mg):</label></th>
				<td><input type="text" id="pcop" name="pcop" placeholder="0g" required="required"></td></tr>
           <tr><th><label>Cobalt(g/mg):</label></th>
				<td><input type="text" name="pcob" id="pcob" placeholder="0g" required="required"></td></tr>		
			<tr><th><label>Fibre(g/mg):</label></th>
	<td><input type="text" name="pfib" id="pfib" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Salt(g/mg):</label></th>
				<td><input type="text" id="psal" name="psal" placeholder="0g" required="required"></td></tr>
           <tr><th><label>Energy(kcal):</label></th>
				<td><input type="text" name="pener" id="pener" placeholder="0 kcal" required="required"></td></tr>	
			<tr><th><label>Cholestrol(g/mg):</label></th>
	<td><input type="text" name="pcho" id="pcho" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Saturated fat(g/mg):</label></th>
				<td><input type="text" id="psat" name="psat" placeholder="0g" required="required"></td></tr>
				<tr><th><label>PolyunSaturated fat(g/mg):</label></th>
				<td><input type="text" id="poly" name="poly" placeholder="0g" required="required"></td></tr>
				<tr><th><label>Monosaturated fat(g/mg):</label></th>
				<td><input type="text" id="pmon" name="pmon" placeholder="0g" required="required"></td></tr>
           <tr><th><label>Trans fat(g/mg):</label></th>
				<td><input type="text" name="ptran" id="ptran" placeholder="0g" required="required"></td></tr>		
			<tr><th><label>Sugar(g/mg):</label></th>
	<td><input type="text" name="psug" id="psug" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Calories(kcal):</label></th>
				<td><input type="text" id="pcalo" name="pcalo" placeholder="0 kcal" required="required"></td></tr>
           <tr><th><label>Caffiene(g/mg):</label></th>
				<td><input type="text" name="pcaf" id="pcaf" placeholder="0g" required="required"></td></tr>		
			<tr><th><label>Anti caking agent(g/mg):</label></th>
	<td><input type="text" name="pcak" id="pcak" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Anti-oxidants agent(g/mg):</label></th>
	<td><input type="text" name="pox" id="pox" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Anti foaming agent(g/mg):</label></th>
	<td><input type="text" name="pfoa" id="pfoa" placeholder="0g" required="required"></td></tr>
			<tr><th><label>Sweetening agent(g/mg):</label></th>
	<td><input type="text" name="pswe" id="pswe" placeholder="0g" required="required"></td></tr>
	<tr><th><label>Additional information:</label></th>
	<td><textarea rows="10" cols="30" name="addin" id="addin" required="required"></textarea></td></tr>
	</table>
	
</div>
<center><button type="submit" class="bgi"><font face="Calibri" size="5">Submit</font></button>
<button type="reset"class="bgi"><font face="Calibri" size="5">Reset</font></button></center>

	
</Form>
</div>
</body>
</html>