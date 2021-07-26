<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="com.test.Udata" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="SubstitutionTest.css"> 
<title>Test</title>
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
	<t>One Word Substitution Test(Part-1)</t><br>
<%
			response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	        if(session.getAttribute("user")==null)
         	{
		    	response.sendRedirect("index.html");
	        }
	       int y=(int)(pageContext.getAttribute("x", PageContext.SESSION_SCOPE));
		   
		  // UserStart a=new UserStart(y)
		  if(y==4)
			  y=1;
		try{
			Udata t1=new Udata(y);
		out.println("<h1>"+t1.check()+"</h1>"); 
		}
		   catch(Exception e){
			   out.println(e);
		   }
%>

<br>
<label style="color:blue;font-size:50px;" for="num1">Enter Answer :</label>
<form action="next_button.jsp" method="post">
  <input type="text" id="num1" name="answer" ><br>
  <input type="submit" value="  Next  " >
</form>

<form action="skip_button.jsp" method="post">
  <input type="submit" value="  Skip  ">
</form>

<form action="end_button.jsp" method="post">
  <input type="submit" value="  End  ">
</form>

</body>
</html>