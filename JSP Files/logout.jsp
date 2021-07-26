<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="SubstitutionTest.css"> 
<title>Insert title here</title>
</head>
<body style="background-color:powderblue; ">
<center>
	<ul> 
		
		<li><a href="index.html">Home</a></li> 
		<li><a href="https://www.youtube.com/channel/UCAeLpu_6RPM5Do1f0DqfUEQ">Career Stick</a></li> 
		
		<li><a href="https://www.youtube.com/channel/UCAeLpu_6RPM5Do1f0DqfUEQ/playlists">Playlist</a></li>	
	</ul> 
	<t>One Word Substitution Test(Part-1)</t><br>
	<h1>logout successfully. If You want to login again:</h1>
	<x color=blue><a href="index.html" > Click here </a></x><br>
<%
response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
		if(session.getAttribute("user")==null)
		{
		response.sendRedirect("index.html");
		}
		session.removeAttribute("user");
		session.invalidate();

%>
<center>
<text id="d7"></text><br></br>
<h3  > <a href="https://www.youtube.com/channel/UCAeLpu_6RPM5Do1f0DqfUEQ/featured"><b><i><u>Career Stick : Grasp of Tech</u></i></b> </h3>
<iframe id="p6" width="900" height="500" src="https://www.youtube.com/embed/T3oc3h2mYEE" title="YouTube video player" frameborder="10" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>	
</center>

</body>
</html>
