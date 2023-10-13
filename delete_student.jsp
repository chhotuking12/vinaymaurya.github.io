<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Student</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container">
        <h2>Delete Student</h2>
        <p>Are you sure you want to delete the student record?</p>
        
        <form action="delete_process.jsp" method="post">
       	 <% session.setAttribute("adhar",(String)request.getParameter("adhar")); %>
            <div class="form-group">
                <button type="submit">Yes, Delete</button>
                <a href="admin.jsp ">Cancel</a>
               
            </div>
        </form>
    </div>
</body>
</html>
