<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Verification</title>
</head>
<body>
<%
if(request.getParameter("username").equals("Admin")&&request.getParameter("password").equals("Admin")){
	
%>
<%@include file="admin.jsp" %>
     <br>
  <%
  
    }
    else{
    	
   %>
   <h2 style="color:red;"><% out.println("Input Data  Error! "); %></h2>
   <br>
    <jsp:include page="adminlogin.html"/>
    
   <% 	
    }
  
  %>

</body>
</html>