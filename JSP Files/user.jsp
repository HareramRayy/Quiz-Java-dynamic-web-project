<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.test.Udata" %>
 <%@ page import="com.test.user.LoginData" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body style="background-color:powderblue; ">
<%
		response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
		/*	if(session.getAttribute("user")==null)
			{
			response.sendRedirect("index.html");
			}*/
		
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		LoginData a=new LoginData();
		boolean xy=a.logIn(username,password);
	/*	if(username.equals("a" ) && password.equals("a")){
			session.setAttribute("user", username);
			response.sendRedirect("welcome_page.jsp");			
			}*/
		if(xy){
			session.setAttribute("user", username);
			pageContext.setAttribute("user_id", username, pageContext.SESSION_SCOPE);
			response.sendRedirect("welcome_page.jsp");			
			}
		else{
			response.sendRedirect("WrongLogin.jsp");
		}

%>
</body>
</html>