<%@page import="model.CampusDao"%>
<%@page import="model.Job"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Insert title here</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="adminNav.html" %>
<%String msg1=(String) request.getAttribute("msg1");%><br>
<br>
<%if(msg1!= null){%>
<br><div class='alert alert-success' role='alert'><%=msg1%></div>
<%}%>
  <%String email=(String)session.getAttribute("email");%>
    <!--  String password=(String)session.getAttribute("password");  -->
    
     <br><br>
<div class="container" style="background-color: #F18805; padding: 15px; text-align: center;">
    <h4>Job Page</h4>
</div>
<br>
<br>
     <div class="container">
      <table class="table table-bordered">
        <thead>
          <tr>
           <th><input type="checkbox" id="selectAllCheckbox"> Select All</th>
              <!-- <th>Select</th>  -->
              <th>id</th>
              <th>Job Title</th>
              <th>Company Name</th>
              <th>Job Type</th>
              <th>Date Posted</th>
              <th>Skills</th>
              <th>City</th>
              <th>Description</th>
              <th>Action</th>
          </tr>
      </thead>
      <tbody>
        <%  ArrayList<Job>al1 = new CampusDao().ViewAlljobs();
        for(Job j : al1) { %>
        <tr style="background-color: white; color: black;">
             <td><input type="checkbox" class="selectCheckbox" name="selectedUsers" value="<%= j.getId() %>"></td>
              <td><%=j.getId()%></td>
             <td><%=j.getTitle() %></td>
             <td><%=j.getCompany() %></td>
             <td><%=j.getJtype() %></td>
             <td><%=j.getDate() %></td>
             <td><%=j.getSkills() %></td>
             <td><%=j.getJcity() %></td>
             <td><%=j.getJdescription() %></td>
             <td> <a href='EditJob.jsp?id=<%=j.getId()%>' class='btn btn-primary'>Edit</a>
             <br><br><a href='deletejob?id=<%=j.getId() %>' class='btn btn-danger'>Detele</a>
      </td>
            
         </tr>
         
         
            <% } %>
     </tbody>
      
 </table>
 </div>
 </body>
 <script>
    // JavaScript code for handling "Select All" functionality

    // Get the "Select All" checkbox and individual checkboxes
    const selectAllCheckbox = document.getElementById('selectAllCheckbox');
    const checkboxes = document.querySelectorAll('.selectCheckbox');

    // Add an event listener to the "Select All" checkbox
    selectAllCheckbox.addEventListener('change', function () {
        checkboxes.forEach((checkbox) => {
          checkbox.checked = selectAllCheckbox.checked;
        });
    });

    function confirmSelected() {
        document.getElementById('confirmForm').submit();
    }
</script>
</html>
