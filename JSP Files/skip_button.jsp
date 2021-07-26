<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>

<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
if(session.getAttribute("user")==null)
	{
	response.sendRedirect("index.html");
}
int y=(int)(pageContext.getAttribute("x", PageContext.SESSION_SCOPE));
if(y==3){
	response.sendRedirect("end_button.jsp");
}
else{
	y=y+1;
	pageContext.setAttribute("x", y, pageContext.SESSION_SCOPE);
	/*y=(int)(pageContext.getAttribute("x", PageContext.SESSION_SCOPE));*/
	/*out.println(y);*/
	response.sendRedirect("start_test.jsp");	
	}
%>
</body>
</html>
