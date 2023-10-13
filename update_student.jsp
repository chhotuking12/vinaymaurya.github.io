<%@page import="mydb.StudentRecord" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student Record</title>
<link rel="stylesheet" href="css/styles.css">
</head>
<body>
 <jsp:useBean id="rb" class="mybeans.RegistrationBean" scope="session"/>
  <jsp:setProperty name="rb" property="*"/>
   <div class="container">
        <h2>Update Student Record</h2>
        
        <% 
      	StudentRecord sr=(StudentRecord)rb.getdao();
            if (sr.updateStudentRecord(rb)) {
                %>
     
                <p>Student record has been successfully Updated.</p>
                <a href="admin.jsp">Back to Admin Dashboard</a>
                <%
            } else {
                %>
                <p>Failed to Update the student record. Please try again.</p>
                <a href="admin.jsp">Back to Admin Dashboard</a>
                <%
            }
        
        %>
    </div>

</body>
</html>