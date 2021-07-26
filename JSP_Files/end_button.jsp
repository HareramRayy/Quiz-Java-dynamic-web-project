<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="com.test.Upast" %>
   <%@ page import="com.test.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="SubstitutionTest.css"> 
<title>End Test</title>
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
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	        if(session.getAttribute("user")==null)
         	{
		    	response.sendRedirect("index.html");
	        }
	        
	        int y=(int)(pageContext.getAttribute("x", PageContext.SESSION_SCOPE));
	        
	        y=y+1;
	       pageContext.setAttribute("x", y, pageContext.SESSION_SCOPE);
	   //    y=(int)(pageContext.getAttribute("x", PageContext.SESSION_SCOPE));
	     
	       //store result
	        int t1=(int)(pageContext.getAttribute("mark", PageContext.SESSION_SCOPE));
	       // out.println("<h1>"+"End Exam"+" "+t1+"</h1>");
	        String date = (new java.util.Date()).toLocaleString();
	        String t2=(String)(pageContext.getAttribute("user_id", PageContext.SESSION_SCOPE));
	        Upast u1=new Upast();
	        u1.insert(t2,date,t1);
	       out.println("<t>End of Exam</t>");
	       out.println("<h1>Marks="+t1+"</h1>");
%>
</body>
</html>