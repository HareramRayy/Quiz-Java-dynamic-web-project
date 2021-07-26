<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.test.Upast" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="SubstitutionTest.css"> 
<title>Past Marks</title>
</head>
<body style="background-color:powderblue;">
<center>
	<ul> 
		<li><a href="welcome_page.jsp">Home</a></li> 
		<li><a href="https://www.youtube.com/channel/UCAeLpu_6RPM5Do1f0DqfUEQ">Career Stick</a></li> 
		<li><a href="clearUserData.jsp">Clear Past Data</a></li>	
		<li><a href="logout.jsp">Logout</a></li>
	</ul> 
	
<tr>
<td> <%out.print("<t>"+"[  Date /&nbsp;&nbsp;&nbsp;"+"</t>"); %></td>
<td> <%out.print("<t>"+"Month /&nbsp;&nbsp;&nbsp; "+"</t>"); %></td>
<td> <%out.print("<t>"+"Year  &nbsp; &nbsp;&nbsp;&nbsp;] &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"</t>"); %></td>
<td> <%out.print("<t>"+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Time &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]&nbsp;&nbsp; "+"</t>"); %></td>
<td> <%out.print("<t>"+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ &nbsp;&nbsp;&nbsp;Marks &nbsp;&nbsp;&nbsp;] &nbsp;&nbsp;"+"</t>"); %></td>
</tr>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
if(session.getAttribute("user")==null)
	{
	response.sendRedirect("index.html");
}
String t3=(String)(pageContext.getAttribute("user_id", PageContext.SESSION_SCOPE));
Upast u=new Upast();
String answer=u.pastData(t3);
String arr[]=answer.split("-");
int i,j=0,len=arr.length;
String temp;
for(i=len-1;i>=0;i--){
	temp=arr[i];
	String arr1[]=temp.split(" ");
	int len1=arr1.length;
out.print("<h1>");
	for(j=0;j<len1;j++){
		if(j==0)
		out.print(arr1[j]+" &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		else if(j==1){
			out.print(arr1[j].substring(0,3)+"/  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		}
		else if(j==2){
			out.print(arr1[j]+" &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;");
		}
		else if(j==3){
			out.print(arr1[j]+"&nbsp;&nbsp;&nbsp;");
		}
		else if(j==4){
			out.print(arr1[j]+" &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ");
		}
		else if(j==5){
			out.print(arr1[j]+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ");
		}
	}
	out.print("</h1>"+"<hr>");
	//out.println("<hr>");
}
%>


</center>
</body>
</html>
