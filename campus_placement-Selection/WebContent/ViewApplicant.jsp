<%@page import="model.CampusDao"%>
<%@page import="model.Applicant"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="adminNav.html"%><br>
<%
String email=(String)session.getAttribute("email");
%>
<!--  String password=(String)session.getAttribute("password"); -->

<br><br>

     <div class="container">
      <table class="table table-bordered">
        <thead>
          <tr>
           <th><input type="checkbox" id="selectAllCheckbox"> Select All</th>
              <!-- <th>Select</th>  -->
              <th>id</th>
              <th>Name</th>
              <th>Email</th>
              <th>Contact No.</th>
              <th>City</th>
              <th>State</th>
              <th>Country</th>
              <th>Address</th>
              <th>DOB</th>
              <th>Qualification</th>
              <th>Action</th>
          </tr>
      </thead>
      <tbody>
     
        <%  ArrayList<Applicant>al1 = new CampusDao().ViewApplicants();
        for(Applicant a : al1) { %>
        <tr style="background-color: white; color: black;">
             <td><input type="checkbox" class="selectCheckbox" name="selectedUsers" value="<%= a.getId() %>"></td>
             <td><%=a.getId()%></td>
             <td><%=a.getAname() %></td>
             <td><%=a.getAemail() %></td>
             <td><%=a.getCno() %></td>
             <td><%=a.getCcity() %></td>
             <td><%=a.getAstate() %></td>
             <td><%=a.getAcountry() %></td>
             <td><%=a.getAdd() %></td>
             <td><%=a.getAdate() %></td>
             <td><%=a.getQualification() %></td>
             <td><a href='viewApp.jsp?id=<%=a.getId()%>' class='btn btn-info'>View</a> 
             &nbsp; &nbsp; <a href='editAppForm.jsp?id=<%=a.getId()%>' class='btn btn-primary'>Edit</a></td>
            
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