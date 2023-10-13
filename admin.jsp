<%@page import="java.util.List"%>
<%@page import="mybeans.RegistrationBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

  <jsp:useBean id="dao" class="mydb.StudentRecord" scope="page"/>
    <%  List<RegistrationBean> al= dao.getAllStudentRecord();
    int count=0;
    %>
    <div class="container">
        <h2>Admin Dashboard</h2>
        <h3>Student Records</h3>
        <!-- Display a list of student records in a table -->
    <table border="2">
     <tr>
       <th>Name</th> <th>Email</th> <th>Adhar_No</th>  <th>Phone_No</th> <th>Course</th> <th>Gender</th> <th>Birth_Date</th><th>Address</th><th colspan="2">Action</th>
     </tr> 
     <% 
        for(RegistrationBean obj:al){
      %>
        <tr>
          <td><%=obj.getName() %></td> 
          <td><%=obj.getEmail() %></td>
          <td><%=obj.getAdhar() %></td>
          <td><%=obj.getPhone() %></td>
          <td><%=obj.getCourse() %></td>
          <td><%=obj.getGender() %></td>
          <td><%=obj.getBirthdate() %></td>
          <td><%=obj.getAddress() %></td>
      
          
          <td><a href="edit_student.jsp?name=<%=obj.getName() %>
          &email=<%=obj.getEmail() %>
           &adhar=<%=obj.getAdhar() %>
           &phone=<%=obj.getPhone() %>
           &course=<%=obj.getCourse() %>
           &gender=<%=obj.getGender() %>
           &birthdate=<%=obj.getBirthdate() %>
            &address=<%=obj.getAddress() %>
          ">Edit</a></td>
          
			<td><a href="delete_student.jsp?adhar=<%=obj.getAdhar() %>">Delete</a></td>

           
           </tr>
        
           <%   
           count++;
           %>
      
      <%  	
        }
     
     %> 
     <tr>
     <td colspan="1" ><mark>Total Student</mark></td>
     <td colspan="9" ><%=count %></td>
     </tr>  
    </table>
    <br>
     <a href="logout.jsp">Logout</a>   

  </div>
</body>
</html>
