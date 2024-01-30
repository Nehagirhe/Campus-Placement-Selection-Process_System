<%@page import="model.ImageTblDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Company"%>
<%@page import="model.CampusDao"%>
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
<%@include file="adminNav.html" %>
<br>
<%String msg1=(String) request.getAttribute("msg1");%>
<%if(msg1!= null){%>
<br><div class='alert alert-success' role='alert'><%=msg1%></div>
<%}%>
  <div class="container">
      <table class="table table-bordered">
        <thead>
          <tr>
          <!--  <th><input type="checkbox" id="selectAllCheckbox"> Select All</th> -->
             <th>id</th>
              <th>Name</th>
              <th>Email</th>
              <th>Contact No.</th>
              <th>Website</th>
              <th>City</th>
              <th>State</th>
              <th>Address</th>
              <th>Description</th>
              <th>Imagename</th>
             <!--  <th>Action</th>  -->
          </tr>
      </thead>
      <tbody>
<%--
       <%  ArrayList<Company>al3 = new CampusDao().ViewCompany();
        for(Company a : al3) { %>
        <tr style="background-color: white; color: black;">
             <td><input type="checkbox" class="selectCheckbox" name="selectedUsers" value="<%= a.getId() %>"></td>
             <td><%=a.getId()%></td>
             <td><%=a.getCname() %></td>
             <td><%=a.getCemail() %></td>
             <td><%=a.getCno() %></td>
             <td><%=a.getWebsite() %></td>
             <td><%=a.getCity() %></td>
             <td><%=a.getState() %></td>
             <td><%=a.getAddress() %></td>
             <td><%=a.getDescription() %></td>
             <td><%=a.getImagename() %></td>
             <td><br><a href='editComForm.jsp?id=<%=a.getId()%>' class='btn btn-primary'>Edit</a></td>
            </td>
         </tr>
            <% } %>
           
           --%>
          
           <%
List<Company> imageList=new ImageTblDao().getAllImage();
////.C:/Users/Neha/workspace/uploadImages/
for(Company img:imageList)
{
%>
  <tr style="background-color: white; color: black;">
  <!--  <td><input type="checkbox" class="selectCheckbox" name="selectedUsers" value="<%--<%= img.getId() %>--%>"></td>
          -->  <td><%=img.getId()%></td>
             <td><%=img.getCname() %></td>
             <td><%=img.getCemail() %></td>
             <td><%=img.getCno() %></td>
             <td><%=img.getWebsite() %></td>
             <td><%=img.getCity() %></td>
             <td><%=img.getState() %></td>
             <td><%=img.getAddress() %></td>
             <td><%=img.getDescription() %></td>
             <td><%=img.getImagename() %></td>
           <td><img src="./upload/<%=img.getImagename()%>" width="100" height="100"></td>
           <!--  <td><br><a href='editComForm.jsp?id=<%=img.getId()%>' class='btn btn-primary'>Edit</a></td>    -->      
 </tr>
 
<%
}
%>
   </tbody>                     
 </table>
 </div>
 </body>
 </html>