<%@ page language="java" import="java.sql.*,nutrition.*" 

import ="java.io.File"
import ="java.io.IOException"
import ="java.io.PrintWriter"


import ="java.sql.Connection"

import ="java.util.Enumeration"

import="javax.servlet.*"


import ="com.oreilly.servlet.MultipartRequest"
import ="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"
contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table.bigg
{
font-family: Calibri;
border-color:#ccff33;
}
table.ontop
{
border:outset;
font-family: Calibri;
font-size: 15px;
border-color:#dfff80;
}
a{
background-color:#ff66a3;
text-decoration:none;
border:none;
color: white;
text-align:center;
cursor:pointer;
font-family:Calibri;
font-size:20px;
font-style:normal;
font-weight:bold;
}
a:hover
{

box-shadow: 0 4px 8px 10px rgba(0, 0, 0, 0.2), 0 6px 20px 10px rgba(0, 0, 0, 0.19);
}
h3.edi
{
color:#ff66a3;
	font-family: Arial;
	font-weight: bolder;
	text-align:center;
}
h2.edit
{
color:#ff66a3;
	font-family: Arial;
	font-weight: bolder;
	text-align:center;
}
hr.tale
{
color:#f66a3;
align:center;
width:10%;
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

</style>
</head>
<body>

<%String p=request.getParameter("keys");
HttpSession hs=null;
hs=request.getSession();
hs.setAttribute("keys",p);
String path=getServletContext().getRealPath("/");
String ui="scott@";// this is a folder in the server
String  newpath=path+"/"+ui;
/**
File fi=new File(newpath);
MultipartRequest mpt=new MultipartRequest(request,newpath,1024*1024*6,new DefaultFileRenamePolicy());//if DefaultFileRenamePolicy is used ur older image will not be overwritten,and a new pic will be uploaded with the name mypic(1).jpg

String controlname=null;
String filename=null;
File fileobj=null;
Enumeration ee=mpt.getFileNames();		//enumeration is an interface in util package
while(ee.hasMoreElements())
{
	controlname=(String)ee.nextElement();
	System.out.println(controlname);
	fileobj=mpt.getFile(controlname);
	filename=fileobj.getName();*/


String strsql="Select picname from produ_nutrition where Product_name=?";
Connection con=CrudOperation.createConnection();
PreparedStatement ps=con.prepareStatement(strsql);
ps.setString(1,p);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
String q=rst.getString("picname");
%>
<img src="<%=newpath%>\<%=q%>"  class="fr"></img>
<!-- <img src="E:\javad\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\nutrition\scott@\<%=q%>" width="100%" height="800px" class="fr"></img>-->
<%}
String strsel="Select Product_name,Product_type,Brand,Certification,Serving,Protein,Fat,Carbohydrates,Vitamin_A,Vitamin_B1,Vitamin_B2,Vitamin_B3,Vitamin_B5,Vitamin_B6,Vitamin_B7,Vitamin_B12,Vitamin_C,Vitamin_D,Vitamin_E,Vitamin_K,Folic_acid,Sodium,Magnesium,Phosphorus,Potassium,Calcium,Iron,Iodine,Zinc,Copper,Cobalt,Fibre,Salt,Energy,Cholestrol,Saturated_fat,Trans_fat,Monosaturated_fat,Polyunsaturated_fat,Sugar,Calories,Caffiene,Anti_caking_agent,Anti_oxidants,Anti_foaming_agent,Sweetening_agents,Additional_info from produ_nutrition where Product_name=? ";
PreparedStatement pst=con.prepareStatement(strsel);
pst.setString(1,p);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	String a=rs.getString("Product_name");
	String b=rs.getString("Product_type");
	String c=rs.getString("Brand");
	String d=rs.getString("Certification");
	String e=rs.getString("Serving");
	String f=rs.getString("Protein");
	String g=rs.getString("Fat");
	String h=rs.getString("Carbohydrates");
	String i=rs.getString("Vitamin_A");
	String j=rs.getString("Vitamin_B1");
	String k=rs.getString("Vitamin_B2");
	String l=rs.getString("Vitamin_B3");
	String m=rs.getString("Vitamin_B5");
	String n=rs.getString("Vitamin_B6");
	String o=rs.getString("Vitamin_B7");
	String s=rs.getString("Vitamin_B12");
	String t=rs.getString("Vitamin_C");
	String u=rs.getString("Vitamin_D");
	String v=rs.getString("Vitamin_E");
	String w=rs.getString("Vitamin_K");
	String x=rs.getString("Folic_acid");
	String y=rs.getString("Sodium");
	String z=rs.getString("Magnesium");
	String aa=rs.getString("Phosphorus");
	String bb=rs.getString("Potassium");
	String cc=rs.getString("Calcium");
	String dd=rs.getString("Iron");
	String ee=rs.getString("Iodine");
	String ff=rs.getString("Zinc");
	String gg=rs.getString("Copper");
	String hh=rs.getString("Cobalt");
	String ii=rs.getString("Fibre");
	String jj=rs.getString("Salt");
	String kk=rs.getString("Energy");
	String ll=rs.getString("Cholestrol");
	String mm=rs.getString("Saturated_fat");
	String nn=rs.getString("Trans_fat");
	String oo=rs.getString("Monosaturated_fat");
	String ss=rs.getString("Polyunsaturated_fat");
	String tt=rs.getString("Sugar");
	String uu=rs.getString("Calories");
	String vv=rs.getString("Caffiene");
	String ww=rs.getString("Anti_caking_agent");
	String xx=rs.getString("Anti_oxidants");
	String yy=rs.getString("Anti_foaming_agent");
	String zz=rs.getString("Sweetening_agents");
	String ab=rs.getString("Additional_info");%>
<table align="center" border="0"  cellpadding="6" cellspacing="5" class="bigg">
<tr><th>Product Name:</th>
<td><%=a %></td></tr>
<tr><th>Product Type:</th>
<td><%=b %></td></tr>
<tr><th>Brand:</th>
<td><%=c %></td></tr>
<tr><th>Certification:</th>
<td><%=d %></td></tr>
</table>
<h2 class="edit">Nutritional Value</h2>
<hr class="tale" color="pink" >
<table align="center" class="ontop"  cellpadding="6" cellspacing="5">
<tr><th><big>Serving&nbsp;&nbsp;<%= e%></big></th></tr>
<tr><th>Energy(kcal)</th><td><%=kk %></td><th>Calories(kcal)</th><td><%=uu %></td></tr>
<tr><th>Protein(g/mg)</th><td><%=f %></td><th>Carbohydrates(g/mg)</th><td><%=h %></td></tr>
<tr><th>Fat(g/mg)</th><td><%=g %></td><th>of which sugars(g)</th><td><%=tt %></td></tr>
<tr><th>of which Saturated Fat</th><td><%=mm%></td><th>Sodium(g/mg)</th><td><%=y %></td></tr>
<tr><th>Trans Fat(g/mg)</th><td><%=nn%></td><th>Magnesium(g/mg)</th><td><%=z %></td></tr>
<tr><th>Monosaturated fat(g/mg)</th><td><%=oo %></td><th>Phosphorus(g/mg)</th><td><%=aa %></td></tr>
<tr><th>Polyunsaturated fat(g/mg)</th><td><%=ss%></td><th>Potassium(g/mg)</th><td><%=bb %></td></tr>
<tr><th>Calcium(g/mg)</th><td><%=cc %></td><th>Iron(g/mg)</th><td><%= dd%></td></tr>
<tr><th>Iodine(g/mg)</th><td><%= ee%></td><th>Zinc(g/mg)</th><td><%= ff%></td></tr>
<tr><th>Copper(g/mg)</th><td><%=gg %></td><th>Cobalt(g/mg)</th><td><%=hh %></td></tr>
<tr><th>Fibre(g/mg)</th><td><%=ii %></td><th>Salt(g/mg)</th><td><%=jj %></td></tr>
<tr><th>Cholestrol(g/mg)</th><td><%=ll %></td><th>Caffiene(g/mg)</th><td><%= vv%></td></tr>
<tr><th>Folic acid(g/mg)</th><td><%=x%></td></tr>
<tr><th>Anti caking agent(g/mg)</th><td><%= ww%></td><th>Anti oxidants(g/mg)</th><td><%=xx %></td></tr>
<tr><th>Anti foaming agent(g/mg)</th><td><%=yy %></td><th>Sweetening agents(g/mg)</th><td><%=zz %></td></tr>
</table>
<table align="center" class="ontop" cellpadding="6" cellspacing="5" >
<tr><th colspan="2"><big><u>List of vitamins(g/mg):</u></big></th></tr>
<tr><th>Vitamin A</th><td><%= i%></td><th>Vitamin B1</th><td><%=j%></td></tr>
<tr><th>Vitamin B2</th><td><%= k%></td><th>Vitamin B3</th><td><%=l %></td></tr>
<tr><th>Vitamin B5</th><td><%= m%></td><th>Vitamin B6</th><td><%= n%></td></tr>
<tr><th>Vitamin B7</th><td><%= o%></td><th>Vitamin B12</th><td><%= s%></td></tr>
<tr><th>Vitamin C</th><td><%= t%></td><th>Vitamin D</th><td><%=u%></td></tr>
<tr><th>Vitamin E</th><td><%=v %></td><th>Vitamin K</th><td><%=w %></td></tr>
</table>
<div style="font-family:Calibri;text-align:center;align:center;width:20%;margin-left:420px;background-color:#FFACD;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)">
<h4>Additional information:</h4><%=ab %></div>
<div style="margin-left:80px;width:80%;height:2px;background-color: #bfbfbf;margin-top:10px ">
</div>


<div style="align:center;margin-top:30px"><a href="/nutrition/jsp/SeeComment.jsp" target="frame2">See reviews</a></div>
<div style="align:center;margin-top:30px" ><a href="/nutrition/jsp/Comment.jsp" target="frame2">Make a review</a></div>
<%}%>
<div style="width:100%;margin-top:70px">
		<iframe name="frame2" width="110%" height="700px" style="margin-left:10px;margin-top:-50px;border:0" src=""></iframe>
			</div>
	

</body>
</html>