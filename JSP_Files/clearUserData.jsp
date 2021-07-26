<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.test.Upast" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Clearing..</title>
</head>
<body>
<%

String i=(String)(pageContext.getAttribute("user_id", PageContext.SESSION_SCOPE));
Upast a=new Upast();
a.pastDataClear(i);
response.sendRedirect("past_data.jsp");
%>


</body>
</html>
