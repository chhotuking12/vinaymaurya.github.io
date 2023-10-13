<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container">
        <h2>Student Profile</h2>
        <!-- Display student profile information fetched from the database -->
        <p>Name: <%= (String) session.getAttribute("name") %></p>
        <p>Email: <%= (String) session.getAttribute("email") %></p>
        <p>Adhar No: <%= (String) session.getAttribute("adhar") %></p>
        <p>Phone No: <%= (String) session.getAttribute("phone") %></p>
        <p>Course: <%= (String) session.getAttribute("course") %></p>
        <p>Gender: <%= (String) session.getAttribute("gender") %></p>
        <p>Birth_Date: <%= (String) session.getAttribute("birthdate") %></p>
        <p>Address: <%= (String) session.getAttribute("address") %></p>
        
        <a href="home_page.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
