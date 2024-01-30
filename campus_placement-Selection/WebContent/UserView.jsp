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
<%@include file="userNav.html" %> 

<%String email=(String)session.getAttribute("email");
  %>
 <!--  String password=(String)session.getAttribute("password");  -->
<%ArrayList<Job>al2=new CampusDao().viewJob();
 for(Job j : al2){
%>
  <div style="width:550px;"class="container p-3 my-3 bg-dark text-white">  
	
	  <p><strong>Name:</strong> <%=j.getCompany()%></p>
	  <p><strong>Job Type:</strong> <%=j.getJtype()%></p>
	  <p><strong>Job Post Date:</strong> <%=j.getDate()%></p>
	  <p><strong>Skills: </strong> <%=j.getSkills()%></p>
	  <p><a href='ViewDetails.jsp?id=<%=j.getId()%>' class='btn btn-primary'>View Details</a></p>
	</div>
	<br>
 <%}%>	
</body>
</html>