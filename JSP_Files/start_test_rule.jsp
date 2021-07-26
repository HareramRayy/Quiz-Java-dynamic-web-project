<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="SubstitutionTest.css"> 
<title>Test-Rule</title>
</head>
<body style="background-color:powderblue;">
<center>
	<ul> 
		<li><a href="welcome_page.jsp">Home</a></li> 
		<li><a href="CareerStick.html ">Career Stick</a></li> 
		<li><a href="AboutUs.html">About Us</a></li> 
		<li><a href="https://www.youtube.com/channel/UCAeLpu_6RPM5Do1f0DqfUEQ/playlists">Playlist</a></li>	
		<li><a href="logout.jsp">Logout</a></li>
	</ul> 
<%
			response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
	        if(session.getAttribute("user")==null)
         	{
		    	response.sendRedirect("index.html");
	        }
	    /*    int x=1,mark=0;
	        String user_id="a";*/
	  /*      pageContext.setAttribute("user_id", user_id, pageContext.SESSION_SCOPE);
	        pageContext.setAttribute("x", x, pageContext.SESSION_SCOPE);
	        pageContext.setAttribute("mark", mark, pageContext.SESSION_SCOPE);*/
	      
	    //    int y=(int)(pageContext.getAttribute("x", PageContext.SESSION_SCOPE));
	
		
%>
	<t>One Word Substitution Test(Part-1)</t><br>
   <h1><b>Rule for Test:</b></h1>
   <h2>1)Click on "Start" to start the test</h2><br>
    <h2> 2)Click on "Next" to go to next question.</h2><br>
    <h2> 3)Click on "Skip" to skip question.</h2><br>
   <x>   <b>Note : &ensp;</b>Data will be saved after attempt of every questions.</x>
   
  <form action="start_test.jsp" method="post">
  <input type="submit" value="Start">
</form> 
</center>
</body>
</html>