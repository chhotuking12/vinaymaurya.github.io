<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Student</title>
    <link rel="stylesheet" href="css/styles1.css">
</head>
<body>
    <div class="container">
        <h2>Edit Student</h2>
        <form action="update_student.jsp" method="post">			
   			<div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" value="<%= (String)request.getParameter("name") %>" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<%= (String)request.getParameter("email") %>" required>
            </div>
            <div class="form-group">
                <label for="adhar">Adhar Number:</label>
                <input type="tel" id="adhar" name="adhar" value="<%=request.getParameter("adhar")%>" readonly required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" value="<%= (String)request.getParameter("phone")  %>" required>
            </div>
            <div class="form-group">
                <label for="course">Course:</label>
                <select id="course" name="course" value="<%= (String)request.getParameter("course")  %>" required>
                    <option value="computer-science">Computer Science</option>
                    <option value="engineering">Engineering</option>
                    <option value="business">Business</option>
                    <option value="art">Art</option>
                </select>
            </div>
			<div class="form-group">
			    <label for="gender">Gender:</label>
			    <input type="radio" id="male" name="gender" value="male" <% if ("male".equals(request.getParameter("gender").trim())){ out.print("checked");} %> required>
			    <label for="male">Male</label>
			    <input type="radio" id="female" name="gender" value="female" <% if ("female".equals(request.getParameter("gender").trim())){ out.print("checked"); }%> required>
			    <label for="female">Female</label>
			</div>
	
           <div class="form-group">
    		<label for="birthdate">Date of Birth:</label>
    		<input type="text" id="birthdate" name="birthdate" value="<%= (String)request.getParameter("birthdate") %>" required>
			</div>

            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" rows="4" value="<%=(String)request.getParameter("address")  %>" required></input>
            </div>
            <div class="form-group">
                <button type="submit">Update Student</button>
            </div>
        </form>
        <a href="admin.jsp">Back to Admin Dashboard</a>
    </div>
</body>
</html>
