<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.test.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
			response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	        if(session.getAttribute("user")==null)
         	{
		    	response.sendRedirect("index.html");
	        }
	       
	       String answer =request.getParameter("answer");
	        
	        int y=(int)(pageContext.getAttribute("x", PageContext.SESSION_SCOPE));
	        
	        //validate answer
	        Udata t2=new Udata(y,answer);
	        if(t2.validate()){
	        	//out.println("<h1>"+"Not error"+"</h1>"); 
	        	  int y1=(int)(pageContext.getAttribute("mark", PageContext.SESSION_SCOPE));
	        	  y1=y1+1;
	        	  pageContext.setAttribute("mark", y1, pageContext.SESSION_SCOPE);
	        }   
	        //check end
	        if(y>=3){
	        	response.sendRedirect("end_button.jsp");
	        }
	        else{
	        y=y+1;
	       pageContext.setAttribute("x", y, pageContext.SESSION_SCOPE);
	       y=(int)(pageContext.getAttribute("x", PageContext.SESSION_SCOPE));
	       response.sendRedirect("start_test.jsp");
	        }
	      // out.println(y);
	 //   response.sendRedirect("start_test.jsp");
%>
  </form>
</body>
</html>