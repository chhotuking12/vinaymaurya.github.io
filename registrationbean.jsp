<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/styles.css">
</head>
<body>
<jsp:useBean id="rb" class="mybeans.RegistrationBean" scope="session"/>
  <jsp:setProperty name="rb" property="*"/>
  <%
    if(rb.studentVerification()){
     
  %>
  <h2 style="color:red;"><% out.print("Successfully Registration"); %></h2>
  <%@include file="login.html" %>
     <br>
  <%
  
    }
    else{
    	
   %>
   <h2 style="color:red;"><% out.println("Input Data  Error! "); %></h2>
   <br>
    <jsp:include page="index.html"/>
    
   <% 	
    }
  
  %>
</body>
</html>