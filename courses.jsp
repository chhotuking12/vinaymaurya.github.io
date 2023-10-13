<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courses</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container">
        <h2>My Courses</h2>
        <!-- Display a list of courses that the student is enrolled in, fetched from the database -->
        <ul>
            <li>Course 1: <%= (String) session.getAttribute("course") %></li>
           
        </ul>
        <a href="home_page.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
