<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<style>
.til
{
 width:35%;
 height:40px;
   margin-top: 3.0em;
   margin-bottom:1.0em;

	align:center;
	opacity:0.9;

}

.bar {

height: 4em;
   opacity: 0.5;
  background:white ;
  border-top: 3px solid #ccc;
  border-bottom: 3px solid #ccc;
   padding-top: 2em;
  margin-top: 4.0em;
  width:45%;
  height:500px;
  margin-left:23em;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 30px 0 rgba(0, 0, 0, 0.19);
  

}
table.ontop {
  position:relative;
 
  z-index:40;
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


div.bar:hover
{
opacity:0.9;
}
</style>
<script>
function checkUserId(ui)
{
	if(XMLHttpRequest)
		{
		x=new XMLHttpRequest();
		}
	else
		{
		x=new ActiveXObject("Microsoft.XMLHTTP");
		}
	x.onReadystatechange=function()
	{
		if(x.readyState==4 && x.status==200)
			{
			var info=x.responseText();
			document.getElementById("msg").innerHTML="<font color='red'>"+info+"</font>";
			}
	}
	x.open("GET","/nutrition/Registration?userid="+ui,"true");
	x.send();
	}
function showpro(ct)
{
	if(ct=="others")
     {
		document.getElementById("txtpro").style.display="block";//show
     }
	else
		{
		document.getElementById("txtpro").style.display="none";//hide
		}
}

function validate()
{
	var e= /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])([a-zA-Z0-9 ]*).{6,10}$/;
// var e1 = /^[0-9a-zA-Z]*$/;
 var sp = document.getElementById("userid");
 if(document.reg.userid.value=="")
 {
	alert("User Id is required!");
	//sp1.innerHTML = "User Id is required!";
	return false;
 }
 else if(e.test(document.reg.userid.value)==false)
 {
	alert("Anyone letter should be in uppercase and numbers must be included in userid!");
	// sp1.innerHTML = "Only alphanumeric values are required!";
	 return false;
 }
 else
 {
	 //alert("OK");
	 sp1.innerHTML="Ok";
 }
 </script>
<script type="text/javascript">
function validate1()
{
 var e1 = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@#$%^&])([a-zA-Z0-9 ]*).{6,10}$/;
 var sp1 = document.getElementById("pass1");
 if(document.reg.pass.value=="")
 {
	alert("password is required");
	// sp3.innerHTML = "Password is required!";
	return false;
 }
 else if(e1.test(document.reg.pass.value)==false)
 {
	 alert("Use One small, Capital, digit and special symbol with atleast 6 to 10 character long in password");
	// sp3.innerHTML = "Use One small, Capital, digit and special symbol with atleast 6 to 10 character long.";
	 return false;
 }
 else
 {
	 sp3.innerHTML="Ok";
 }
}
</script>
<script type="text/javascript">
function validate2()
{
	 var e2 = /^[a-zA-Z ]*$/;
	 var sp2 = document.getElementById("uname1");
	 if(document.reg.uname.value=="")
	 {
		alert("Name is required");
		 //sp2.innerHTML = "User Name is required!";
		return false;
	 }
	 else if(e2.test(document.reg.uname.value)==false)
	 {
		 alert("Only alphabets are applicable in name");
		 //sp2.innerHTML = "Only alphabets are applicable!";
		 return false;
	 }
	 else
	 {
		 sp2.innerHTML="Ok";
	 }
}


</script>
<script type="text/javascript">
function validate3()
{
	 var e3 = /^([0-9]*).{2,2}$/;
	 var sp3 = document.getElementById("txtage1");
	 if(document.reg.txtage.value=="")
	 {
			alert("Age is required ");
		//sp4.innerHTML = "Contact No. is required!";
		return false;
	 }
	 else if(e3.test(document.reg.txtage.value)==false)
	 {
		 alert("Age must be in digits");
		// sp4.innerHTML = "Only 10 digits!";
		 return false;
	 }
	 else
	 {
		 sp4.innerHTML="Ok";
		 return true;
	 }
	}
</script>
<script type="text/javascript">
function validate4()
{
		 var e4 = /^([0-9]*).{3,3}$/;
		 var sp4 = document.getElementById("txthe1");
		 if(document.reg.txthe.value=="")
		 {
				alert("Height is required ");
			//sp4.innerHTML = "Contact No. is required!";
			return false;
		 }
		 else if(e4.test(document.reg.txthe.value)==false)
		 {
			 alert("Height must be in digits");
			// sp4.innerHTML = "Only 10 digits!";
			 return false;
		 }
		 else
		 {
			 sp4.innerHTML="Ok";
			 return true;
		 }
	}

</script>
<script type="text/javascript">
function validate5()
{
	{
		 var e5 = /^([0-9]*).{3,3}$/;
		 var sp5 = document.getElementById("txtwe1");
		 if(document.reg.txtwe.value=="")
		 {
				alert("Weight is required ");
			//sp4.innerHTML = "Contact No. is required!";
			return false;
		 }
		 else if(e5.test(document.reg.txtwe.value)==false)
		 {
			 alert("Weight must be in digits");
			// sp4.innerHTML = "Only 10 digits!";
			 return false;
		 }
		 else
		 {
			 sp5.innerHTML="Ok";
			 return true;
		 }
	}

</script>
<script type="text/javascript">
function validate6()
{
var e6 =/^([_A-Za-z0-9-]*)+(\.[_A-Za-z0-9-]+)*@([A-Za-z0-9-]+\.)+([A-Za-z]{2,3})$/;
var sp6 = document.getElementById("txtemail1");
if(document.reg.txtemail.value=="")
{
	alert("Email id is required");
	// sp5.innerHTML = "Email id is required!";
	return false;
}
else if(e6.test(document.reg.txtemail.value)==false)
{
	 alert("Please input valid email Id. eg. abc@gmail.com");
	 //sp5.innerHTML = "Please input valid email Id. eg. abc@gmail.com";
	 return false;
}
else
{
	 sp5.innerHTML="Ok";
	 return true;
}
return false;
}
}
</script>
<script type="text/javascript">
function validate7()
{
	 var e7 = /^[a-zA-Z ]*$/;
	 var sp7 = document.getElementById("ail1");
	 if(document.reg.ail.value=="")
	 {
		alert("Ailment is required.If you have no ailment write 'No'");
		 //sp2.innerHTML = "User Name is required!";
		return false;
	 }
	 else if(e7.test(document.reg.ail.value)==false)
	 {
		 alert("Only alphabets are applicable in ailments");
		 //sp2.innerHTML = "Only alphabets are applicable!";
		 return false;
	 }
	 else
	 {
		 sp2.innerHTML="Ok";
	 }
}


</script>
</head>

<body background="/nutrition/images/reg.jpg">
<div class="til" style="margin-left:300px">
<img src="/nutrition/images/banner.jpg" width="135%" height="100px" style="margin-left:50px "class="ontop"></div>
<div class="bar" style="  marign-left:300px">
<Form method="post" action="/nutrition/Registration" name="reg" onsubmit="return validate()">
		<table  class="ontop"style="width:55%; height: 250px;z-index:40;position:absolute;align:center"cellspacing="8">
				<h4 id="msg">  </h4></td></tr>
			<tr><th><label>UserID:</label></th>
				<td><input type="text" class="ontop" name="userid"id="userid1" placeholder="Enter userid" required="required"  onblur="return validate()">
			
			<tr><th><label>Password:</label></th>
				<td><input type="password" class="ontop" name="pass" id="pass1" placeholder="Enter password"  onblur="return validate1()"></td></tr>
			
			<tr><th><label>Name:</label></th>
				<td><input type="text" class="ontop" name="uname" id="uname1"
					placeholder="Enter name" required="required" onblur="return validate2()"></td></tr>
			<tr><th><label>Gender:</label></th>
				<td><input type="radio" class="ontop" name="gender" value="m" id="mgender"
					checked>male <input type="radio" name="gender" value="f" id="fgender">female</td></tr>
			<tr><th><label>Age(in years):</label></th>
				<td><input type="text" class="ontop" name="txtage" id="txtage1"
					placeholder="Enter age" required="required" onblur="return validate3()"></td></tr>
			<tr><th><label>Height(in cms):</label></th>
				<td><input type="text" class="ontop" name="txthe" id="txthe1"
					placeholder="Enter height" required="required" onblur="return validate4()"></td></tr>
			<tr><th><label>Weight(in kgs):</label></th>
				<td><input type="text" class="ontop" name="txtwe" id="txtwe1"
					placeholder="Enter weight" required="required" onclick="return validate5()"></td></tr>
			<tr><th><label>EmailID:</label></th>
				<td><input type="text" class="fmt" id="txtemail1" name="txtemail"
					placeholder="abc@xyz.com"  onclick="return validate6()"></td></tr>
           <tr><th><label>Ailments*:</label></th>
				<td><input type="text" class="ontop" name="ail" id="ail1" placeholder="(if any)" onblur="return validate7()" required="required"></td></tr>
					<tr><th><label>Profession:</label></th>
			
				<td><Select name="upro" id="upro"  class="ontop" onchange="showpro(this.value)"><option value="default">your profession
						<option value="Teacher">Teacher</option>
						<option value="Student">Student</option>
						<option value="Entrepreneur">Entrepreneur</option>
						<option value="Public Services">Public services</option>
						<option value="Medical">Medical</option>
						<option value="Technology">Technology</option>
						<option value="Science">Science</option>
						<option value="Industry">Industry</option>
						<option value="Transport">Transport</option>
						<option value="Cultural Artist">Cultural Artist</option>
						<option value="others">Others</option> <input type="text" id="txtpro" style="display: none">
				</Select> </td></tr>
					
					<tr><td colspan=2 align="center">
<button type="submit" class="bgi"><font face="Calibri" size="5">Submit</font></button>
<button type="reset"class="bgi"><font face="Calibri" size="5">Reset</font></button></td></tr>
			</table>
			</Form>
</div>

</body>
</html>