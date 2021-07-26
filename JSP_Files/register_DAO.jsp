<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.test.user.LoginData" %>
    <%@ page import="com.test.user.*" %>
    <%@ page import="com.test.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String username =request.getParameter("user_name");
String DOB =request.getParameter("DOB");
String mobile =request.getParameter("mob");
String password =request.getParameter("p");
int f=0,t;
if(mobile.length()!=10){
	f=1;
}
else{
	for(int i=0;i<10;i++){
		if(mobile.charAt(i)=='0' || mobile.charAt(i)=='1' || mobile.charAt(i)=='2' || mobile.charAt(i)=='3' || mobile.charAt(i)=='4' || mobile.charAt(i)=='5' ){
			
		}
		else if(mobile.charAt(i)=='6' || mobile.charAt(i)=='7' || mobile.charAt(i)=='8' || mobile.charAt(i)=='9' ){
			
		}
		else{
			f=1;
			break;
		}
	}
}
String arr[]=DOB.split("/");
try{
for(int i=0;i<3;i++){
	if(arr[i]==""){f=1;}
	else{
		t=Integer.parseInt(arr[i]);
		if(i==0){
		if(t>=0 && t<=31){}
		else{f=1;}
		}
		if(i==1){
		if(t>=0 && t<=12){}
		else{f=1;}
		}
		if(i==2){
		if(t>=1900 && t<=2021){}
		else{f=1;}
		}
	}
}
}
catch(Exception e){
	f=1;
}
	
		LoginData a=new LoginData(mobile,username,DOB,password);
		boolean x=a.signUp(mobile,DOB,username,password);
		if(f==1){
			response.sendRedirect("wrongMobileRegister.jsp");
		}
		else if(x==true){
			response.sendRedirect("successSignUp.jsp");
		}
		else{
			response.sendRedirect("failSignUp.jsp");
//out.println(x);
		}

%>
</body>
</html>