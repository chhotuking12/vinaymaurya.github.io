<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grades</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container">
        <h2>My Grades</h2>
        <!-- Display the student's grades for each course, fetched from the database -->
        <table>
            <tr>
                <th>Course</th>
                <th>Grade</th>
            </tr>
            <tr>
                <td><%= (String) session.getAttribute("course") %></td>
                <td>Pending</td>
            </tr>
          <!--  <tr>
                <td>Course 2</td>
                <td>B</td>
            </tr>
            <tr>
                <td>Course 3</td>
                <td>A+</td>
            </tr>
            -->
        </table>
        <a href="home_page.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
