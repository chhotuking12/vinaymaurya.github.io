<%@page import="mydb.StudentRecord"%>
<%@page import="mybeans.RegistrationBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <jsp:useBean id="gbe" class="mybeans.GetBYEmail" scope="session"/>
  <jsp:setProperty name="gbe" property="*"/>
  
  <%
  StudentRecord dao=(StudentRecord)gbe.getdao();
    if(dao.studentVerifying1(gbe)) {
    	RegistrationBean rb=dao.getByEmailId(gbe);
    	session.setAttribute("user",gbe.getUsername());
    	session.setAttribute("name",rb.getName());
    	session.setAttribute("email",rb.getEmail());
    	session.setAttribute("adhar",rb.getAdhar());
    	session.setAttribute("phone",rb.getPhone());
    	session.setAttribute("course",rb.getCourse());
    	session.setAttribute("gender",rb.getGender());
    	session.setAttribute("birthdate",rb.getBirthdate());
    	session.setAttribute("address",rb.getAddress());
    	
   %>
     <jsp:forward page="home_page.jsp"/>
     <br>
     <%
    }
    else{
    	out.print(" ");
     %>
    <%--  <jsp:include page="login.html">  --%>
    
    <h2 style="color:red;"><% out.println("Entered Valid User & Password"); %></h2>
   <br>
    <%@ include file="login.html" %>
    <%
    }
  
  %>
  

</body>
</html>