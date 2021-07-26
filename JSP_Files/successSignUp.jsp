<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="SubstitutionTest.css"> 
<title>SubstitutionTest</title>
</head>
<body  style="background-color:powderblue; ">
<center>
	<ul> 
		<li><a href="Admin.html">Admin</a></li>
		<li><a href="index.html">Home</a></li> 
		<li><a href="CareerStick.html ">Career Stick</a></li> 
		<li><a href="AboutUs.html">About Us</a></li> 
		<li><a href="https://www.youtube.com/channel/UCAeLpu_6RPM5Do1f0DqfUEQ/playlists">Playlist</a></li>	
	</ul> 
	<%
	response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
	%>
<t>One Word Substitution Test(Part-1)</t><br><br>
<y>Account Created Successfully</y>
<h1 >Login to Start the Test</h1>
<form action="user.jsp" method="post"> 
  <label style="color:blue; font-size:50px;" for="num1">Enter username :</label>
  <input type="text" id="num1" name="username" ><br>
 
  <label style="color:blue; font-size:50px;" for="num2">Enter password :</label>
  <input type="password" id="num2" name="password" ><br>

  <input type="submit" value="Login">
</form>
</center>
<br></br><br></br><br></br><br></br>
<text >If You does not remember password:</text>
<x color=blue><a href="password.html" > Click here </a></x><br>
<text >If You are a new user:</text>
<x color=blue><a href="register.jsp" > Click here to Register </a></x>
<center>
<text id="d7"></text><br></br>
<h3  > <a href="https://www.youtube.com/channel/UCAeLpu_6RPM5Do1f0DqfUEQ/featured"><b><i><u>Career Stick : Grasp of Tech</u></i></b> </h3>
<iframe id="p6" width="900" height="500" src="https://www.youtube.com/embed/T3oc3h2mYEE" title="YouTube video player" frameborder="10" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>	
</center>
</body>
</html>