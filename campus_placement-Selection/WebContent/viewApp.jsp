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
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="adminNav.html" %>
<br>
<%
String email=(String)session.getAttribute("email");
%>
<!--  String password=(String)session.getAttribute("password"); -->

<%int id=Integer.parseInt(request.getParameter("id")); 


  ArrayList<Applicant>al4 = new CampusDao().ViewApplicants();
        for(Applicant a : al4) { %>
        <%if(id==a.getId()){ %>
       <center> <h2>***APPLICANT DETAILS***</h2> </center>
       <hr>
      <div style="width:550px;"class="container p-3 my-3 bg-dark text-white">  
	  <p><strong>Name : </strong> <%=a.getAname()%></p>
	  <p><strong>Email:</strong> <%=a.getAemail()%></p>
	  <p><strong>Contact No.:</strong> <%=a.getCno()%></p>
	  <p><strong>City:</strong> <%=a.getCcity()%></p>
	  <p><strong>State: </strong> <%=a.getAstate()%></p>
	  <p><strong>Country:</strong> <%=a.getAcountry()%></p>
	  <p><strong>Address:</strong> <%=a.getAdd()%></p>
	  <p><strong>DOB :</strong> <%=a.getAdate()%></p>
	  <p><strong>Qualification:</strong> <%=a.getQualification()%></p>
	  
	 </div>
        
      <%} %>  
        <%}%>
</body>
</html>