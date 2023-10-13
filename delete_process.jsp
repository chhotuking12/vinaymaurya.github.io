<%@page import="mydb.StudentRecord"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Student - Process</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

  <jsp:useBean id="dao" class="mydb.StudentRecord" scope="page"/>
    <div class="container">
        <h2>Delete Student - Process</h2>
        
        <% 
      
            if (dao.deleteStudentRecord((String)session.getAttribute("adhar")) > 0 ) {
                %>
     
                <p>Student record has been successfully deleted.</p>
                <a href="admin.jsp">Back to Admin Dashboard</a>
                <%
            } else {
                %>
                <p>Failed to delete the student record. Please try again.</p>
                <a href="admin.jsp">Back to Admin Dashboard</a>
                <%
            }
        
        %>
    </div>
</body>
</html>
