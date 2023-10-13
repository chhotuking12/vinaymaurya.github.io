<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home Page</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

    <div class="container">
        <h2><%= "Welcome, "+(String) session.getAttribute("name") %></h2>
        <h3>Student Dashboard:</h3>
        <ul>
            <li><a href="profile.jsp">View Profile</a></li>
            <li><a href="courses.jsp">View Courses</a></li>
            <li><a href="grades.jsp">View Grades</a></li>
            <li><a href="attendance.jsp">View Attendance</a></li>
            <li><a href="logout.jsp">Logout</a></li>
        </ul>
        
        <hr>
        
        <h3>Announcements</h3>
        <ul>
            <li>Class XYZ: Assignment due on Friday.</li>
            <li>Class ABC: Midterm exam next week.</li>
        </ul>
        
        <hr>
        
        <h3>Upcoming Events</h3>
        <ul>
            <li>Guest Speaker: Today at 3:00 PM in Room 101.</li>
            <li>Study Group Meeting: Tomorrow at 5:00 PM in Library.</li>
        </ul>
    </div>
</body>
</html>
