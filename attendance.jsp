<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendance</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container">
        <h2>Attendance Records</h2>
        <table>
            <thead>
                <tr>
                    <th>Course</th>
                    <th>Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= (String) session.getAttribute("course") %></td>
                    <td>pending</td>
                    <td>Pending</td>
                </tr>
              <!--    <tr>
                    <td>Course 2</td>
                    <td>2023-01-16</td>
                    <td>Absent</td>
                </tr>
                <tr>
                    <td>Course 3</td>
                    <td>2023-01-17</td>
                    <td>Present</td>
                </tr>
                -->
                <!-- Add more attendance records as needed -->
            </tbody>
        </table>
        <a href="home_page.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
